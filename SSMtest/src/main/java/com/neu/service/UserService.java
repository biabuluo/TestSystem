package com.neu.service;

import com.neu.utils.ResultModel;
import com.neu.vo.UserVO;

import java.util.List;

/**
 * @author 小宇
 * @date {2023}-{07}-{10}:{14:07}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */
public interface UserService {
    ResultModel<List<UserVO>> findAllUser();
    int addUser(UserVO userVO);
}
