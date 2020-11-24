package com.dcms.pojo.cases;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/1/28 0028 19:17
 * Description:
 **/
@Data
public class CaseInfo {
    private String caseId;  //病例ID
    private String customerId;  //客户ID
    private String doctorId;  //医生ID
    private String diagnoseTime;    //诊断日期
    private String selfReported;    //主诉症状 String
    private String pastHistory; //既往史 String
    private String diagnose;    //诊断
    private String diffDiagnosis;   //鉴别诊断 String
    private String treatmentPlan;   //治疗计划 String
    private String advice;  //医嘱
    private String recheckTime; //复诊时间
    private Integer trResult;    //治疗周期（新增时赋值1，每次复诊，+1）
    private Integer status;      //状态：判断该对象是新添加还是复诊，1为新增，2为复诊，3为治疗结束
    /*以下不与数据库匹配*/
    private String medMess;      //治疗需要的药品批号与数量，需要切割处理
    private Integer revisitNum; // 复诊次数
    /*private String PresentIllness;  //现病史*/

    public String getCaseId() {
        return caseId;
    }

    public void setCaseId(String caseId) {
        this.caseId = caseId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }

    public String getDiagnoseTime() {
        return diagnoseTime;
    }

    public void setDiagnoseTime(String diagnoseTime) {
        this.diagnoseTime = diagnoseTime;
    }

    public String getSelfReported() {
        return selfReported;
    }

    public void setSelfReported(String selfReported) {
        this.selfReported = selfReported;
    }

    public String getPastHistory() {
        return pastHistory;
    }

    public void setPastHistory(String pastHistory) {
        this.pastHistory = pastHistory;
    }

    public String getDiagnose() {
        return diagnose;
    }

    public void setDiagnose(String diagnose) {
        this.diagnose = diagnose;
    }

    public String getDiffDiagnosis() {
        return diffDiagnosis;
    }

    public void setDiffDiagnosis(String diffDiagnosis) {
        this.diffDiagnosis = diffDiagnosis;
    }

    public String getTreatmentPlan() {
        return treatmentPlan;
    }

    public void setTreatmentPlan(String treatmentPlan) {
        this.treatmentPlan = treatmentPlan;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public String getRecheckTime() {
        return recheckTime;
    }

    public void setRecheckTime(String recheckTime) {
        this.recheckTime = recheckTime;
    }

    public Integer getTrResult() {
        return trResult;
    }

    public void setTrResult(Integer trResult) {
        this.trResult = trResult;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMedMess() {
        return medMess;
    }

    public void setMedMess(String medMess) {
        this.medMess = medMess;
    }

    public Integer getRevisitNum() {
        return revisitNum;
    }

    public void setRevisitNum(Integer revisitNum) {
        this.revisitNum = revisitNum;
    }
}
