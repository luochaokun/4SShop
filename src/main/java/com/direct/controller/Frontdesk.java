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
import com.direct.service.ICarInfoService;
@Controller
@RequestMapping("/Frontdesk")
public class Frontdesk {
	@Autowired
	@Qualifier("CarInfoService")
	private ICarInfoService icis;

	//查询车辆信息
	@RequestMapping(value="/Frontdesk.do")
	public ModelAndView selectCarInfo(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		List<CarInfo> list = icis.queryCarInfo();
		ModelAndView mav=new ModelAndView("Thefrontdesk/index");
		mav.addObject("f", list);
	
		return mav;
	}
	//id查询
	@RequestMapping(value="/Frontdeskid.do")
	public ModelAndView toUpdateCarInfo(int id) throws IOException{
		CarInfo carinfo = icis.queryCarInfoById(id);
		ModelAndView mav=new ModelAndView("Thefrontdesk/xiangq");
		mav.addObject("a", carinfo);
		return mav;
	}
	//查询车辆信息
		@RequestMapping(value="/Frontdesk1.do")
		public ModelAndView selectCarInfo1(HttpServletRequest req,HttpServletResponse resp) throws IOException{
			List<CarInfo> list = icis.queryCarInfo();
			ModelAndView mav=new ModelAndView("Thefrontdesk/purchase_used");
			for(CarInfo c:list)
			{
				System.out.println(c.getCname()+".......................................................................");
			}
			mav.addObject("b", list);
		
			return mav;
		}
	//预约查询
		@RequestMapping(value="/Frontdeskid1.do")
		public ModelAndView toUpdateCarInfo2(int id) throws IOException{
			CarInfo carinfo = icis.queryCarInfoById(id);
			ModelAndView mav=new ModelAndView("Thefrontdesk/checkout");
			mav.addObject("a", carinfo);
			return mav;
		}
}
