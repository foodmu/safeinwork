package com.jiuheng.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jiuheng.entity.User;
import com.jiuheng.mapper.UserMapper;
import com.jiuheng.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jiuheng.util.JwtUtils;
import com.jiuheng.util.Result;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Objects;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author CMQ
 * @since 2022-09-18
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService , UserDetailsService {


    @Resource
    private UserMapper userMapper;
    @Resource
    private PasswordEncoder passwordEncoder;
    @Resource
    private JwtUtils jwtUtils;

    /*
    用户登录并返回token
     */
    @Override
    public String login(User user) {
        UserDetails userDetails = loadUserByUsername(user.getUsername());
        if(passwordEncoder.matches(user.getPassword(),userDetails.getPassword())){
            return jwtUtils.generateToken(userDetails);
        }
        return "登录失败";
    }

    @Override
    public Result register(User user) {
        user.setUPwd(passwordEncoder.encode(user.getPassword()));
        int insert = userMapper.insert(user);
        if(insert == 1){
            return Result.success(500,"注册成功");
        }
        return Result.failure(400,"注册失败");
    }


    /**
     * 通过用户名获取用户信息
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("username", username));
        if(Objects.isNull(user)){
            throw new UsernameNotFoundException("该用户不存在");
        }
        return user;
    }


}
