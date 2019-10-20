package com.direct.dao;

import java.util.List;

import com.direct.entity.CarBuying;


public interface ICarBuyingDao {
	
	public int insertCar(CarBuying car); //添加信息
	
	public int updateCar(CarBuying car); //修改
	
	public int deleteCar(int car);//删除
	
	//查询
	public CarBuying selectById(int cId);
	public List<CarBuying> selectCar(CarBuying car);
}
