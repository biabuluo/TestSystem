package com.neu.mapper;

import com.neu.vo.UserVO;

import java.util.List;

/**
 * @author 小宇
 * @date {2023}-{07}-{10}:{14:10}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */
public interface UserMapper {
    public List<UserVO> findAllUser();
    public int addUser(UserVO userVO);
}
