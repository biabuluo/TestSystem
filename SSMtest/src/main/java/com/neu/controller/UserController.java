package com.neu.controller;

import com.neu.dto.UserDTO;
import com.neu.service.UserService;
import com.neu.utils.ResultModel;
import com.neu.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author 小宇
 * @date {2023}-{07}-{10}:{14:22}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */
@Controller("userController")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    @ResponseBody
    public ResultModel<List<UserVO>> findAllUser(){
        return userService.findAllUser();
    }

    @RequestMapping(value = "/users", method = RequestMethod.POST)
    @ResponseBody
    public int addUser(UserDTO userDTO){
        UserVO userVO = new UserVO();
        userVO.setUid(userDTO.getUid());
        userVO.setPassword(userDTO.getPassword());
        userVO.setEmail(userDTO.getEmail());
        //默认用户名为账号
        userVO.setUsername(userDTO.getUid());
        return userService.addUser(userVO);
    }
}
