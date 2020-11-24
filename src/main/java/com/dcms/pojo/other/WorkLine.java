package com.dcms.pojo.other;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/28 0028 21:04
 * Description:医生预约信息
 **/
@Data
public class WorkLine {
    private String workId;          //预约号
    private String docId;           //医生Id
    private String customerId;      //客户Id
    private String appointment;     //预约时间
    private String purpose;         //预约目的（有关联病例ID就放ID，无ID放预约目的）
    private String durationTime;    //持续时间
    private Integer workFlag;       //预约状态（1：到时间客户已经就诊，2：到时间客户未就诊，3：预约未到时间，4：特殊原因取消预约）
    private String remake;          //备注：状态解释(如果为：G，表示该条预约信息与病理复诊有关联)

    public String getWorkId() {
        return workId;
    }

    public void setWorkId(String workId) {
        this.workId = workId;
    }

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getAppointment() {
        return appointment;
    }

    public void setAppointment(String appointment) {
        this.appointment = appointment;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getDurationTime() {
        return durationTime;
    }

    public void setDurationTime(String durationTime) {
        this.durationTime = durationTime;
    }

    public Integer getWorkFlag() {
        return workFlag;
    }

    public void setWorkFlag(Integer workFlag) {
        this.workFlag = workFlag;
    }

    public String getRemake() {
        return remake;
    }

    public void setRemake(String remake) {
        this.remake = remake;
    }
}
