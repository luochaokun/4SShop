package com.direct.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.direct.entity.ApplyInfo;
import com.direct.entity.CarBuying;
import com.direct.entity.CarInfo;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.service.ICarBuyingService;
import com.direct.service.IEmployeeInfoService;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/carC")

public class CarBuyingController {
	@Autowired
	@Qualifier("carService")
	public ICarBuyingService cservice;

	
	@InitBinder
	public void initBinder(WebDataBinder binder){
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	CustomDateEditor cde=new CustomDateEditor(sdf, true);
	binder.registerCustomEditor(Date.class, cde);
	}
	
	//查询
	@RequestMapping(value="/showCar")
	public void selectEmp(HttpServletRequest req,HttpServletResponse res) throws IOException{
		System.out.println("showCar");
		//获取当前页面
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取每页面的条数
		int size=req.getParameter("limit")==null?1:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		CarBuying car=new CarBuying();
		System.out.println(car.getBuyTime());
		//car.setBuyTime(key);
		String jsonStr=cservice.selectCar(page, size, null);
		System.out.println(jsonStr);
		res.setCharacterEncoding("UTF-8");
		//响应数据回客户端
		res.getWriter().print(jsonStr);
		
	}
	

	//添加
	@RequestMapping(value="/add")
	public void addsApp(CarBuying car,HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		System.out.println("CarAdd添加------------------------------");
//		System.out.println(app.getAppName()+"\t"+app.getInmoney());
		int count=cservice.insertCar(car);
		System.out.println(count);
		res.getWriter().print(count);
	}
//	
//	//修改方法
//	@RequestMapping("/update")
//	public void update(HttpServletRequest req,HttpServletResponse res,ApplyInfo app) throws IOException{
//		Logger.getLogger(DepartmentInfoController.class).debug("进入controller ");
//		int count=iaservice.updateApp(app);
//		System.out.println("222222222222222222222222222222222\t"+count+"\t1111111111111111111111111111111111"+"\t"+app.getRemark());
//		res.getWriter().print(count);
//	}
//	
	//删除方法
	@RequestMapping("/delete")
	public void delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(CarBuyingController.class).debug("进入controller");
		int cId=Integer.parseInt(req.getParameter("cId"));
		int i=cservice.deleteCar(cId);
		res.getWriter().print(i);
	}
}
