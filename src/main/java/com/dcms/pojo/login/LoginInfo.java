package com.dcms.pojo.login;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/1/30 0030 20:19
 * Description:
 **/
@Data
public class LoginInfo {
    private String userId;      //登录人ID
    private String username;    //登录人
    private String password;    //密码
    private String verity;      //验证码
    private Integer userSort;//类别：客户，管理员，医生

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getVerity() {
        return verity;
    }

    public void setVerity(String verity) {
        this.verity = verity;
    }

    public Integer getUserSort() {
        return userSort;
    }

    public void setUserSort(Integer userSort) {
        this.userSort = userSort;
    }
}
