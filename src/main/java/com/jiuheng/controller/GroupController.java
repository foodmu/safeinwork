package com.jiuheng.controller;


import com.jiuheng.entity.Group;
import com.jiuheng.service.GroupService;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author CMQ
 * @since 2022-09-18
 */
@RestController
@RequestMapping("/group")
public class GroupController {

    @Resource
    private GroupService groupService;

    @ApiOperation("获取所有工作组")
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public List<Group> getAllGroup(){
        return groupService.list();
    }

}
