package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ICarInfoDao;
import com.direct.entity.CarInfo;
import com.direct.entity.CustomerInfo;
import com.direct.entity.VehicleSystemEntity;
import com.direct.service.ICarInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;


@Service("CarInfoService")
public class CarInfoServiceImpl implements ICarInfoService{
	
	@Autowired
	private ICarInfoDao icifd;
	
	public int insertCarInfo(CarInfo car) {
		return icifd.insertCarInfo(car);
	}

	public int deleteCarInfo(int id) {
		return icifd.deleteCarInfo(id);
	}

	public int updateCarInfo(CarInfo car) {
		return icifd.updateCarInfo(car);
	}

	public  List<CarInfo> queryCarInfo() {
		return icifd.queryCarInfo();
	}

	public CarInfo queryCarInfoById(int id) {
		return icifd.queryCarInfoById(id);
	}

	@Override
	public List<CarInfo> selectCarById() {
		// TODO Auto-generated method stub
		return icifd.selectCarById();
	}

	public List<VehicleSystemEntity> queryCarVehicleSystem() {
		return icifd.queryCarVehicleSystem();
	}

}
