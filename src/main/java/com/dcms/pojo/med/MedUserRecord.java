package com.dcms.pojo.med;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/20 0020 11:16
 * Description:
 **/
@Data
public class MedUserRecord {
    private String serialNo;    //记录编号
    private String caseId;      //病例ID
    private String medmId;      //药品批号
    private Integer useNum;     //使用数量
    private String useTime;     //事件发生时间

    public String getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(String serialNo) {
        this.serialNo = serialNo;
    }

    public String getCaseId() {
        return caseId;
    }

    public void setCaseId(String caseId) {
        this.caseId = caseId;
    }

    public String getMedmId() {
        return medmId;
    }

    public void setMedmId(String medmId) {
        this.medmId = medmId;
    }

    public Integer getUseNum() {
        return useNum;
    }

    public void setUseNum(Integer useNum) {
        this.useNum = useNum;
    }

    public String getUseTime() {
        return useTime;
    }

    public void setUseTime(String useTime) {
        this.useTime = useTime;
    }
}
