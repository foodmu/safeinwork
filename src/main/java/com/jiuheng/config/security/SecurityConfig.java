package com.jiuheng.config.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.annotation.Resource;

/**
 * @ClassName SecurityConfig
 * @Description Security配置类
 * @Author 程茂强
 * @Data 2022/9/21 16:24
 * @Version 1.0
 */
@Configuration
public class SecurityConfig {

    @Resource
    private MyAccessDeniedHandler myAccessDeniedHandler;
    @Resource
    private MyAuthenticationEntryPoint myAuthenticationEntryPoint;

    @Bean
    public JwtAuthenticationTokenFilter jwtAuthenticationTokenFilter(){
        return new JwtAuthenticationTokenFilter();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {

        httpSecurity
                .csrf()
                .disable()
                .exceptionHandling()
                .accessDeniedHandler(myAccessDeniedHandler)
                .authenticationEntryPoint(myAuthenticationEntryPoint)
                .and()
                .authorizeRequests()
                .antMatchers(
                        "/login"
                        ,"/register"
                        ,"/logout",
                        "/doc.html"
                        ,"/css/**"
                        ,"/js/**"
                        ,"favicon.icon"
                        ,"/webjars/**"
                        ,"/swagger-resources/**"
                        ,"/v2/api-docs/**"
                        ,"/admin/register"
                ).permitAll()
                .anyRequest().authenticated()
                .and()
                .addFilterBefore(jwtAuthenticationTokenFilter(), UsernamePasswordAuthenticationFilter.class);

        //关闭session
        httpSecurity.sessionManagement()
                .maximumSessions(1)
                .maxSessionsPreventsLogin(true)
                .and()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS);


        return httpSecurity.build();
    }
}
