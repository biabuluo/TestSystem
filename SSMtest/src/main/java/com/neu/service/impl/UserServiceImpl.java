package com.neu.service.impl;

import com.neu.mapper.UserMapper;
import com.neu.service.UserService;
import com.neu.utils.ResultModel;
import com.neu.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 小宇
 * @date {2023}-{07}-{10}:{14:13}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */


@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    public ResultModel<List<UserVO>> findAllUser() {
        ResultModel<List<UserVO>> resultModel = new ResultModel<List<UserVO>>();
        List<UserVO> res = userMapper.findAllUser();
//        设置返回结果
        resultModel.setData(res);
        resultModel.setMsg("查询成功！");
        resultModel.setCode(200);
        return resultModel;
    }

    @Override
    public int addUser(UserVO uservo) {
        return userMapper.addUser(uservo);
    }
}
