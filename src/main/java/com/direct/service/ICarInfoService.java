package com.direct.service;

import java.util.List;

import com.direct.entity.CarInfo;
import com.direct.entity.CustomerInfo;
import com.direct.entity.VehicleSystemEntity;

public interface ICarInfoService {
	public int insertCarInfo(CarInfo car);
	public int deleteCarInfo(int id);
	public int updateCarInfo(CarInfo car);
	public  List<CarInfo> queryCarInfo();
	public CarInfo queryCarInfoById(int id);
	
	public List<CarInfo> selectCarById(); //查询

	//查询车系
	public List<VehicleSystemEntity> queryCarVehicleSystem();
	

}
