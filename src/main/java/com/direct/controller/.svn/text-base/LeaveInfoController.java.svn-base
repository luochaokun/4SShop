package com.direct.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.json.stream.JsonGenerator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.LeaveInfoEntity;
import com.direct.entity.LeaveTypeEntity;
import com.direct.service.ILeaveInfoService;
import com.direct.service.ILeaveTypeService; 
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;



@Controller
@RequestMapping(value="/Leave")
public class LeaveInfoController{
	
	@Autowired
	@Qualifier("LEService")
	private ILeaveInfoService ile;
	
	@Autowired
	@Qualifier("LTService")
	private ILeaveTypeService ilt;
	
	//转换时间类型
	@InitBinder()
	public void binder(WebDataBinder binder){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor cde=new CustomDateEditor(sdf, true);
		binder.registerCustomEditor(Date.class,cde);
	} 
	
	@RequestMapping("/selectAll.do")
	public  void selectAll(HttpServletRequest req,HttpServletResponse res,LeaveInfoEntity le) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页数与每页条数
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		EmployeeInfoEntity emp=new EmployeeInfoEntity();
		emp.setEmpName(key);
		le.setEmp(emp);
		//使用dao层的查询方法并将结果存入一个部门实体类集合中
		Page pa=PageHelper.startPage(page, size, true);
		List<LeaveInfoEntity> list = ile.selTe(le);
		//转换为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(list);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+pa.getTotal()+",\"data\":"+jsonStr+"}";
		res.getWriter().print(jsonStr);
	}
	
	@RequestMapping("/select.do")
	public void select(HttpServletRequest req,HttpServletResponse res,LeaveInfoEntity le,int id) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页数与每页条数
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		//使用dao层的查询方法并将结果存入一个部门实体类集合中
		Page pa=PageHelper.startPage(page, size, true);
		List<LeaveInfoEntity> list = ile.selTeId(id);
		//转换为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(list);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+pa.getTotal()+",\"data\":"+jsonStr+"}";
		res.getWriter().print(jsonStr);
	}
	//查询方法
	@RequestMapping("/addSel.do")
	public ModelAndView addSel(){
		ModelAndView mav=new ModelAndView("Leave/addLeave");
		List<LeaveTypeEntity> lt=ilt.selType();
		mav.addObject("ltc", lt);
		return mav;
	}
	
	@RequestMapping("/add.do")
	public void add(LeaveInfoEntity le,HttpServletResponse res) throws IOException{
		le.setSubmitTime(new Date());
		le.setState(0);
		le.setCheckName(null);
		int i=ile.addTe(le);
		res.getWriter().print(i);
	}
	
	@RequestMapping("/upLeave.do")
	public void up(LeaveInfoEntity le,HttpServletResponse res) throws IOException{
		int i=ile.upTe(le);
		if(i>0){
			res.getWriter().print(i);
		}
	}
	
	@RequestMapping("/upsel.do")
	public ModelAndView upsel(int id) throws IOException{
		ModelAndView mav=new ModelAndView("Leave/upLeave");
		List<LeaveTypeEntity> lt=ilt.selType();
		mav.addObject("ltc", lt);
		LeaveInfoEntity i=ile.upsel(id);
		mav.addObject("i", i);
		return mav;
		
	}
	
	@RequestMapping("/upLeave2.do")
	public void up2(LeaveInfoEntity le,HttpServletResponse res) throws IOException{
		System.out.println("khuidsf");
		int i=ile.upTe2(le);
		System.out.println(i);
		res.getWriter().print(i);
	}
	//删除
	@RequestMapping("/delLeave.do")
	public void del(LeaveInfoEntity le,HttpServletResponse res,int id) throws IOException{
		int i=ile.delTe(id);
		if(i>0){
			res.getWriter().print(i);
		}
	}
}
