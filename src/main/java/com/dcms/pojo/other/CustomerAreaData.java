package com.dcms.pojo.other;

import lombok.Data;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: NZD
 * Date: 2020/3/15 0015 11:07
 * Description:客户数据显示基础类
 **/
@Data
public class CustomerAreaData {
    private List<CustomerAddress> addressCount; //地区对象数组
    private String[] areaName;          //地区名数组

    public List<CustomerAddress> getAddressCount() {
        return addressCount;
    }

    public void setAddressCount(List<CustomerAddress> addressCount) {
        this.addressCount = addressCount;
    }

    public String[] getAreaName() {
        return areaName;
    }

    public void setAreaName(String[] areaName) {
        this.areaName = areaName;
    }
}
