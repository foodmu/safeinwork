package com.jiuheng.controller;

import com.jiuheng.entity.User;
import com.jiuheng.service.UserService;
import com.jiuheng.util.Result;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName LoginController
 * @Description 登录控制器
 * @Author 程茂强
 * @Data 2022/9/21 19:31
 * @Version 1.0
 */
@RestController
public class LoginController {

    @Resource
    private UserService userService;

    @PostMapping("/login")
    public Result login(@RequestBody User user){
        if(user.getUsername() == null || user.getUsername().equals("")) {
            return Result.failure(400,"请输入完整信息");
        }
        if(user.getUPwd() == null || user.getUPwd().equals("")){
            return Result.failure(400,"请输入完整信息");
        }
        String token = userService.login(user);
        Map<String,String> map = new HashMap<>();
        map.put("Bearer",token);
        return Result.success(200,"登录成功",map);
    }

    @PostMapping("/register")
    public Result register(@RequestBody User user){
        return userService.register(user);
    }
}
