package com.jiuheng.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName JwtUtil
 * @Description JWT工具类
 * @Author 程茂强
 * @Data 2022/6/27 15:52
 * @Version 1.0
 */
@Component
public class JwtUtils {

    private static final String CREATE_KEY_USERNAME = "sub";
    private static final String CREATE_KEY_CREATED_DATE = "created";

    @Value("${jwt.secret}")
    private String secret;
    @Value("${jwt.expiration}")
    private Long expiration;
    Map<String,Object> claims = new HashMap<>();


    /**
     * 根据用户信息生成token
     * @param userDetails 用户信息
     * @return token
     */
    public String generateToken(UserDetails userDetails){

        String username = userDetails.getUsername();
        claims.put(CREATE_KEY_USERNAME,username);
        claims.put(CREATE_KEY_CREATED_DATE,new Date());
        return generateToken(claims);
    }

    /**
     * 从JWT token中获取用户名
     * @param token
     * @return 用户名
     */
    public String getUsernameFromToken(String token){
        String username = null;

        try {
            Claims claims = getClaimsFromToken(token);
            username = claims.getSubject();
        } catch (Exception ignored) {
        }
        return username;
    }

    /**
     * 判断JWT token是否过期
     * @param token
     * @param userDetails
     * @return
     */
    public boolean validateToken(String token,UserDetails userDetails){
        boolean usernameIsEquals = userDetails.getUsername().equals(getUsernameFromToken(token));
        return usernameIsEquals && isTokenExpiration(token);
    }


    /**
     * 判断token能否被刷新
     * @param token
     * @return
     */
    public boolean canFresh(String token){
        return isTokenExpiration(token);
    }

    /**
     * 刷新token
     * @param token
     * @return
     */
    public String refreshToken(String token){
        Claims claims = getClaimsFromToken(token);
        claims.put(CREATE_KEY_CREATED_DATE,new Date());
        return generateToken(claims);
    }

    /**
     * 判断JWT token是否过期
     * @return
     */
    private boolean isTokenExpiration(String token) {
        Claims claims = getClaimsFromToken(token);
        Date expirationDate = claims.getExpiration();
        return !expirationDate.before(new Date());
    }

    /**
     * 从JWT token中获取荷载
     * @param token
     * @return 荷载
     */
    private Claims getClaimsFromToken(String token) {

        Claims claims = null;

        try {
            claims = Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return claims;
    }

    /**
     * 根据claims生成token
     * @param claims 荷载
     * @return token
     */
    private String generateToken(Map<String,Object> claims){

        return Jwts.builder()
                    .setClaims(claims)
                    .setExpiration(generateExpirationDate(expiration))
                    .signWith(SignatureAlgorithm.HS256,secret)
                    .compact();
    }

    /**
     * 生成JWT token过期时间
     * @param expiration 过期时间
     * @return 过期日期
     */
    private Date generateExpirationDate(Long expiration) {
        return new Date(System.currentTimeMillis() + expiration * 1000);
    }


}
