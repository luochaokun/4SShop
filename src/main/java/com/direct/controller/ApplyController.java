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
import com.direct.service.IApplyService;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/appC")

public class ApplyController {
	@Autowired
	@Qualifier("appService")
	public IApplyService iaservice;

	@InitBinder
	public void initBinder(WebDataBinder binder){
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	CustomDateEditor cde=new CustomDateEditor(sdf, true);
	binder.registerCustomEditor(Date.class, cde);
	}
	
	//查询
	@RequestMapping(value="/showApp")
	public void selectEmp(HttpServletRequest req,HttpServletResponse res) throws IOException{
		System.out.println("showApp");
		//获取当前页面
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取每页面的条数
		int size=req.getParameter("limit")==null?1:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		ApplyInfo app=new ApplyInfo();
		System.out.println("时间为："+app.getAppTime());
		app.setAppName(key);
		System.out.println("1111111111111111111111111111111111111111111111111"+app.getAppName());
		String jsonStr=iaservice.selectApp(page, size,app);
	
		System.out.println(jsonStr);
		res.setCharacterEncoding("UTF-8");
		//响应数据回客户端
		res.getWriter().print(jsonStr);
	}
	
	
	//添加
	@RequestMapping(value="/add")
	public void addsApp(ApplyInfo app,HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		System.out.println("APPlyd添加------------------------------");
		System.out.println(app.getAppName()+"\t"+app.getInmoney());
		int count=iaservice.insertApp(app);
		System.out.println(count);
		res.getWriter().print(count);
	}
	
	//修改方法
	@RequestMapping("/update")
	public void update(HttpServletRequest req,HttpServletResponse res,ApplyInfo app) throws IOException{
		Logger.getLogger(ApplyController.class).debug("进入controller ---------------------------------");
		app.setInmoney((app.getMoney())-(app.getOutmoney()));
		int count=iaservice.updateApp(app);
		res.getWriter().print(count);
	}
	
	//删除方法
	@RequestMapping("/delete")
	public void delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(ApplyController.class).debug("进入controller");
		int aId=Integer.parseInt(req.getParameter("aId"));
		System.out.println("aId为："+aId);
		
		int i=iaservice.deleteApp(aId);
		System.out.println("I的值为："+i);
		res.getWriter().print(i);
	}
	//查询所有数据
	@RequestMapping("/selectById.do")
	public void selectById(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(ApplyController.class).debug("进入controller ");
		List<ApplyInfo> alist=iaservice.selectAppById();
		Gson g=new Gson();
		String jsonApp=g.toJson(alist);
		System.out.println(jsonApp);
		res.getWriter().print(jsonApp);
	}
}
