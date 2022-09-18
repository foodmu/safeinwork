package com.jiuheng.service.impl;

import com.jiuheng.entity.User;
import com.jiuheng.mapper.UserMapper;
import com.jiuheng.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author CMQ
 * @since 2022-09-18
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
