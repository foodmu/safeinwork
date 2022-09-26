package com.jiuheng.service;

import com.jiuheng.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jiuheng.util.Result;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author CMQ
 * @since 2022-09-18
 */
public interface UserService extends IService<User> {

    String login(User user);

    Result register(User user);
}

