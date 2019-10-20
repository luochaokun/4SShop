package com.direct.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.CarInfo;
import com.direct.entity.VehicleSystemEntity;
import com.direct.service.ICarInfoService;
import com.direct.service.IVehicleSystem;

@Controller
@RequestMapping("/vehicl")
public class VehicleSystemController {
	@Autowired
	@Qualifier("vehicle")
	private IVehicleSystem ive;

	//查询车辆信息
	@RequestMapping(value="/vehicl.do")
	public ModelAndView selectCarInfo(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		List<VehicleSystemEntity> list = ive.select();
		ModelAndView mav=new ModelAndView("Thefrontdesk/index");
		mav.addObject("f", list);
	
		return mav;
	}
}
