package com.direct.entity;

import java.util.Date;

public class CarBuying {
	private int cId;
	private CarInfo carInfo;
	private ApplyInfo appInfo;
	private int count;
	private Date buyTime;
	private double totalPrice;
	
	public ApplyInfo getAppInfo() {
		return appInfo;
	}
	public void setAppInfo(ApplyInfo appInfo) {
		this.appInfo = appInfo;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public CarInfo getCarInfo() {
		return carInfo;
	}
	public void setCarInfo(CarInfo carInfo) {
		this.carInfo = carInfo;
	}
	public Date getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	

}
