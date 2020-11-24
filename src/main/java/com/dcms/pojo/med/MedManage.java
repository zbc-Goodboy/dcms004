package com.dcms.pojo.med;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/2/1 0001 19:56
 * Description:
 **/
@Data
public class MedManage {
    private String produceNum;      //产品批号(primary key)
    private String medicineId;      //药品编号
    private String specification;   //规格
    private String wrap;            //包装
    private String produceDate;     //生产日期
    private String expirationDate;  //保质期
    private String toDate;          //到期时间
    private String medAddress;      //生产地址
    private Integer medNumber;      //当前库存量
    private String medFactory;      //生产厂家
    private String medTime;         //当前时间(primary key)
    private Double price;           //单价
    private Double cost;            //成本
    /*以下属性不与数据库匹配*/
    private String medName;      //药品名称

    public String getProduceNum() {
        return produceNum;
    }

    public void setProduceNum(String produceNum) {
        this.produceNum = produceNum;
    }

    public String getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(String medicineId) {
        this.medicineId = medicineId;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public String getWrap() {
        return wrap;
    }

    public void setWrap(String wrap) {
        this.wrap = wrap;
    }

    public String getProduceDate() {
        return produceDate;
    }

    public void setProduceDate(String produceDate) {
        this.produceDate = produceDate;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }

    public String getMedAddress() {
        return medAddress;
    }

    public void setMedAddress(String medAddress) {
        this.medAddress = medAddress;
    }

    public Integer getMedNumber() {
        return medNumber;
    }

    public void setMedNumber(Integer medNumber) {
        this.medNumber = medNumber;
    }

    public String getMedFactory() {
        return medFactory;
    }

    public void setMedFactory(String medFactory) {
        this.medFactory = medFactory;
    }

    public String getMedTime() {
        return medTime;
    }

    public void setMedTime(String medTime) {
        this.medTime = medTime;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public String getMedName() {
        return medName;
    }

    public void setMedName(String medName) {
        this.medName = medName;
    }
}
