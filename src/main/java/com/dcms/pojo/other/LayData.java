package com.dcms.pojo.other;

import lombok.Data;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/7 0007 18:19
 * Description:
 **/
@Data
public class LayData<T> {
//    private Integer page;   //第几页
//    private Integer limit;  //几条数据
    private Integer code;   //成功与否
    private String msg;     //数据描述
    private Integer count;  //数据总量
    private List<T> data;   //数据内容

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
