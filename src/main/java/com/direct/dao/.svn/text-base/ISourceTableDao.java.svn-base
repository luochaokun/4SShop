package com.direct.dao;

import java.util.HashMap;
import java.util.List;

import com.direct.entity.ApplyInfo;
import com.direct.entity.CarBuying;
import com.direct.entity.CarInfo;
import com.direct.entity.VehicleTypeEntity;

public interface ISourceTableDao {
	//采购记录报表
	public HashMap queryApply(int month);//每月采购申请金额
	public HashMap queryCarBuying(int month);//采购支出数据
	public HashMap queryCarBuyingCount(int month);//每月购车数量
	//支出记录报表
	public HashMap queryExpenditure(int month);//每月其他支出金额
	public HashMap querySalary(int month);//每月薪资支出金额
	public HashMap querySale(int month);//每月售车收入
	//库存报表
	public HashMap queryWarehouseReceipt(int month);//获取入库数量
	public HashMap queryOutBoundOrder(int month);//根据出库数量
	public HashMap queryCarBySid(int sid);//通过车系查询车数
	
	
}
