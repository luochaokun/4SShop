package com.direct.service;

import java.util.HashMap;
import java.util.List;

import com.direct.entity.ApplyInfo;
import com.direct.entity.CarBuying;
import com.direct.entity.CarInfo;

public interface ISourceTableService {
	//采购记录报表
	public String queryApply();//采购申请数据
	public String queryCarBuying();//采购支出数据
	public String queryCarBuyingCount();//每月购车数量
	//支出记录报表
	public String queryExpenditure();//每月其他支出金额
	public String querySalary();//每月薪资支出金额
	public String querySale();//每月售车收入
	//库存报表
	public String queryWarehouseReceipt();//获取入库数量
	public String queryOutBoundOrder();//根据出库数量
	public HashMap queryCarBySid(int sid);//通过车系查询车数
}
