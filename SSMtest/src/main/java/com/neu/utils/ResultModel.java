package com.neu.utils;

/**
 * @author 小宇
 * @date {2023}-{07}-{10}:{14:05}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */
public class ResultModel<T> {
    private T data;
    private int code;
    private String msg;

    public String getMsg() {
        return msg;
    }

    public int getCode() {
        return code;
    }

    public T getData() {
        return data;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setData(T data) {
        this.data = data;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
