package com.dcms.pojo.cus;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/7 0007 10:52
 * Description:
 **/
@Data
public class Customer {
    private String customerId;  //主键：客户ID:202001270001  日期与编号组合的生成方式
    private String customerName;    //名称
    private String sex; //性别
    private Integer age; //年龄
    private String cid; //身份证号 18位
    private String job; //职业
    private String phone;   //联系电话
    private String address; //家庭住址
    private String ecName;  //紧急联系人姓名
    private String ecPhone; //紧急联系人电话
    private String allergy; //过敏史
    private String attribute1;  //是否长期服用某种药物
    private String attribute2;  //女性患者是否怀孕
    private String attribute3;  //保证以上内容属实  用于病人确认
    private String attribute4;  //系统性疾病史：无/具体病症
    private String systemicDis;  //系统性疾病史

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEcName() {
        return ecName;
    }

    public void setEcName(String ecName) {
        this.ecName = ecName;
    }

    public String getEcPhone() {
        return ecPhone;
    }

    public void setEcPhone(String ecPhone) {
        this.ecPhone = ecPhone;
    }

    public String getAllergy() {
        return allergy;
    }

    public void setAllergy(String allergy) {
        this.allergy = allergy;
    }

    public String getAttribute1() {
        return attribute1;
    }

    public void setAttribute1(String attribute1) {
        this.attribute1 = attribute1;
    }

    public String getAttribute2() {
        return attribute2;
    }

    public void setAttribute2(String attribute2) {
        this.attribute2 = attribute2;
    }

    public String getAttribute3() {
        return attribute3;
    }

    public void setAttribute3(String attribute3) {
        this.attribute3 = attribute3;
    }

    public String getAttribute4() {
        return attribute4;
    }

    public void setAttribute4(String attribute4) {
        this.attribute4 = attribute4;
    }

    public String getSystemicDis() {
        return systemicDis;
    }

    public void setSystemicDis(String systemicDis) {
        this.systemicDis = systemicDis;
    }
}
