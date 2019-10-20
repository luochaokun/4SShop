package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ICarBuyingDao;
import com.direct.entity.CarBuying;
import com.direct.service.ICarBuyingService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("carService")
public class CarBuyingService implements ICarBuyingService {

	@Autowired
	public ICarBuyingDao cdao;
	
	public int insertCar(CarBuying car) {
		
		return cdao.insertCar(car);
	}


	public int updateCar(CarBuying car) {
		return cdao.updateCar(car);
	}


	public int deleteCar(int cId) {

		return cdao.deleteCar(cId);
	}

	
	public CarBuying selectById(int cid) {
		
		return cdao.selectById(cid);
	}

	
	public String selectCar(int curr, int size, CarBuying car) {
		
//	初始化分页的当前页数和显示条数
	Page page = PageHelper.startPage(curr, size, true);
	//得到数据集合
	List<CarBuying> alist = cdao.selectCar(car);
	//得到总条数
	int count = (int)page.getTotal();
	
	//封装pm
	Gson g=new Gson();
	String jsonStr=g.toJson(alist);
	jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonStr+"}";
	return jsonStr;

	}



}
