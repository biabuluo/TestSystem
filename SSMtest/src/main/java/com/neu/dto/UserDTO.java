package com.neu.dto;

/**
 * @author 小宇
 * @date {2023}-{07}-{12}:{10:22}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */
public class UserDTO {
    private String uid;
    private String username;
    private String password;
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public String getUid() {
        return uid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }
}
