package com.dcms.pojo.med;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/2/1 0001 18:02
 * Description:
 **/
@Data
public class Medicine {
    private String medicineId;      //药品编号
    private String medName;         //药品名称
    private String medType;         //药品类型：C1内服、C2外用、B1保健品、S手术专用
    private String ingredient;      //成分
    private String medCharacter;    //性状
    private String majorFunction;   //功能主治
    private String useMethod;       //用法用量
    private String unEffect;        //不良反应
    private String taboo;           //禁忌
    private String notice;          //注意事项
    private String store;           //贮藏
    private Integer medNum;          //该类药全部库存量，所有批次数量相加
    private Integer medMCount;       //该类药共进了多少批
    private String medTime;         //库存最新记录日期

    public String getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(String medicineId) {
        this.medicineId = medicineId;
    }

    public String getMedName() {
        return medName;
    }

    public void setMedName(String medName) {
        this.medName = medName;
    }

    public String getMedType() {
        return medType;
    }

    public void setMedType(String medType) {
        this.medType = medType;
    }

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }

    public String getMedCharacter() {
        return medCharacter;
    }

    public void setMedCharacter(String medCharacter) {
        this.medCharacter = medCharacter;
    }

    public String getMajorFunction() {
        return majorFunction;
    }

    public void setMajorFunction(String majorFunction) {
        this.majorFunction = majorFunction;
    }

    public String getUseMethod() {
        return useMethod;
    }

    public void setUseMethod(String useMethod) {
        this.useMethod = useMethod;
    }

    public String getUnEffect() {
        return unEffect;
    }

    public void setUnEffect(String unEffect) {
        this.unEffect = unEffect;
    }

    public String getTaboo() {
        return taboo;
    }

    public void setTaboo(String taboo) {
        this.taboo = taboo;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getStore() {
        return store;
    }

    public void setStore(String store) {
        this.store = store;
    }

    public Integer getMedNum() {
        return medNum;
    }

    public void setMedNum(Integer medNum) {
        this.medNum = medNum;
    }

    public Integer getMedMCount() {
        return medMCount;
    }

    public void setMedMCount(Integer medMCount) {
        this.medMCount = medMCount;
    }

    public String getMedTime() {
        return medTime;
    }

    public void setMedTime(String medTime) {
        this.medTime = medTime;
    }
}
