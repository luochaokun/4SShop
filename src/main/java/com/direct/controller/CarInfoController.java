package com.direct.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.CarInfo;
import com.direct.entity.VehicleSystemEntity;
import com.direct.service.ICarInfoService;
import com.google.gson.Gson;



@Controller
@RequestMapping("/CarCon")
public class CarInfoController {
	
	@Autowired
	@Qualifier("CarInfoService")
	private ICarInfoService icis;

	//查询车辆信息
	@RequestMapping(value="/selectCarInfo.do")
	public ModelAndView selectCarInfo(){
		List<CarInfo> list = icis.queryCarInfo();
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping(value="/toinsertCarInfo.do")
	public ModelAndView toinsertCarInfo(CarInfo car) throws IOException{
		List<VehicleSystemEntity> veList = icis.queryCarVehicleSystem();
		ModelAndView mav=new ModelAndView("addCar");
		mav.addObject("veList", veList);
		return mav;
	}
	
	@RequestMapping(value="/insertCarInfo.do")
	public ModelAndView insertCarInfo(CarInfo car) throws IOException{
		System.out.println(car.getCname());
		int row = icis.insertCarInfo(car);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.setViewName("redirect:selectCarInfo.do");
		return mav;
	}
	@RequestMapping(value="/toUpdateCarInfo.do")
	public ModelAndView toUpdateCarInfo(int id) throws IOException{
		CarInfo carinfo = icis.queryCarInfoById(id);
		List<VehicleSystemEntity> veList = icis.queryCarVehicleSystem();
		ModelAndView mav=new ModelAndView("updateCar");
		mav.addObject("carinfo", carinfo);
		mav.addObject("veList", veList);
		return mav;
	}
	@RequestMapping(value="/UpdateCarInfo.do")
	public ModelAndView UpdateCarInfo(CarInfo car) throws IOException{
		int row = icis.updateCarInfo(car);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.setViewName("redirect:selectCarInfo.do");
		return mav;
	}
	
	//查询所有数据
	@RequestMapping("/selectById.do")
	public void selectById(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(CarInfo.class).debug("进入controller ");
		List<CarInfo> clist=icis.selectCarById();
		Gson g=new Gson();
		String jsonCar=g.toJson(clist);
		System.out.println(jsonCar);
		res.getWriter().print(jsonCar);
	}
	@RequestMapping(value="/deleteCarInfo.do")
	public ModelAndView deleteCarInfo(int id) throws IOException{
		int row = icis.deleteCarInfo(id);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.setViewName("redirect:selectCarInfo.do");
		return mav;
	}
	
	
}
