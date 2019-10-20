package com.direct.entity;

import java.util.List;

public class SourceTableInfo {
	private String applyTable;//采购申请数据
	private String carBuyingTable;//采购支出数据
	private String carBuyingCountTable;//每月购车数量
	private String outboundorder;//获取出库数量
	private String warehousereceipt;//根据入库数量
	private String expenditureTable;//其他支出
	private String salaryTable;//根据车型获取已有车系
	private String saleTable;//根据车型获取已有车系
	
	
	public String getExpenditureTable() {
		return expenditureTable;
	}
	public void setExpenditureTable(String expenditureTable) {
		this.expenditureTable = expenditureTable;
	}
	public String getSalaryTable() {
		return salaryTable;
	}
	public void setSalaryTable(String salaryTable) {
		this.salaryTable = salaryTable;
	}
	public String getSaleTable() {
		return saleTable;
	}
	public void setSaleTable(String saleTable) {
		this.saleTable = saleTable;
	}
	public String getApplyTable() {
		return applyTable;
	}
	public void setApplyTable(String applyTable) {
		this.applyTable = applyTable;
	}
	public String getCarBuyingTable() {
		return carBuyingTable;
	}
	public void setCarBuyingTable(String carBuyingTable) {
		this.carBuyingTable = carBuyingTable;
	}
	public String getCarBuyingCountTable() {
		return carBuyingCountTable;
	}
	public void setCarBuyingCountTable(String carBuyingCountTable) {
		this.carBuyingCountTable = carBuyingCountTable;
	}
	public String getOutboundorder() {
		return outboundorder;
	}
	public void setOutboundorder(String outboundorder) {
		this.outboundorder = outboundorder;
	}
	public String getWarehousereceipt() {
		return warehousereceipt;
	}
	public void setWarehousereceipt(String warehousereceipt) {
		this.warehousereceipt = warehousereceipt;
	}
	
}
