package com.dcms.pojo.other;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/2/26 0026 19:39
 * Description:
 **/
@Data
public class SocketMsg {
    public int type;            //消息类型（客户、医生、游客发送的信息分别对应：1,2,3）
    private String fromUser;    //发送者
    private String toUser;      //接受者
    private String msg;         //信息内容

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getFromUser() {
        return fromUser;
    }

    public void setFromUser(String fromUser) {
        this.fromUser = fromUser;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "{" +
                "type:" + "'" + type + "'" +
                ", fromUser:" + "'" + fromUser + "'" +
                ", toUser:" + "'" + toUser + "'" +
                ", msg:" + "'" + msg + "'" +
                '}';
    }
}
