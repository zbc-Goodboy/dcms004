package com.dcms.pojo.cases;

import com.dcms.pojo.cus.Customer;
import com.dcms.pojo.doc.Doctor;
import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/10 0010 11:29
 * Description:
 **/
@Data
public class CaseInfos {
    private Doctor doctor;
    private Customer customer;
    private CaseInfo caseInfo;

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public CaseInfo getCaseInfo() {
        return caseInfo;
    }

    public void setCaseInfo(CaseInfo caseInfo) {
        this.caseInfo = caseInfo;
    }
}
