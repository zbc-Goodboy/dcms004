package com.dcms.pojo.doc;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/2/1 0001 11:27
 * Description:
 **/
@Data
public class Doctor {
    private String docId;   //医生ID
    private String docName; //姓名
    private String cid;    //身份证
    private String docSex;  //性别
    private Integer docAge;  //年龄
    private String nation;  //民族
    private Integer workYear;    //工作年限
    private String politicStatus;   //政治面貌
    private String workKind;   //工作类型
    private String docTitle;    //职称
    private String education;   //学历
    private String docIntroduce;    //个人简介

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getDocSex() {
        return docSex;
    }

    public void setDocSex(String docSex) {
        this.docSex = docSex;
    }

    public Integer getDocAge() {
        return docAge;
    }

    public void setDocAge(Integer docAge) {
        this.docAge = docAge;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public Integer getWorkYear() {
        return workYear;
    }

    public void setWorkYear(Integer workYear) {
        this.workYear = workYear;
    }

    public String getPoliticStatus() {
        return politicStatus;
    }

    public void setPoliticStatus(String politicStatus) {
        this.politicStatus = politicStatus;
    }

    public String getWorkKind() {
        return workKind;
    }

    public void setWorkKind(String workKind) {
        this.workKind = workKind;
    }

    public String getDocTitle() {
        return docTitle;
    }

    public void setDocTitle(String docTitle) {
        this.docTitle = docTitle;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getDocIntroduce() {
        return docIntroduce;
    }

    public void setDocIntroduce(String docIntroduce) {
        this.docIntroduce = docIntroduce;
    }
}
