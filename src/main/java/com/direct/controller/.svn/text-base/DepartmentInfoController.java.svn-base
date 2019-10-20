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

import com.direct.entity.DepartmentInfo;
import com.direct.pageutil.PageModel;
import com.direct.service.IDepartmentInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/Dep")
public class DepartmentInfoController {
	
	@Autowired
	@Qualifier("IdService")
	private IDepartmentInfoService idservice;
	
	//转换时间类型
	@InitBinder
	public void initBinder(WebDataBinder binder){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor cde=new CustomDateEditor(sdf, true);
		binder.registerCustomEditor(Date.class, cde);
	}
	
	//添加方法
	@RequestMapping("/add.do")
	public void add(DepartmentInfo dep,HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(DepartmentInfoController.class).debug("进入controller");
		int i=idservice.insertDep(dep);
		res.getWriter().print(i);
	}
	//删除方法
	@RequestMapping("/delete.do")
	public void delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(DepartmentInfoController.class).debug("进入controller");
		int deptId=Integer.parseInt(req.getParameter("deptId"));
		int i=idservice.deleteDep(deptId);
		res.getWriter().print(i);
	}
	//修改方法
	@RequestMapping("/update.do")
	public void update(HttpServletRequest req,HttpServletResponse res,DepartmentInfo dep) throws IOException{
		Logger.getLogger(DepartmentInfoController.class).debug("进入controller ");
		int i=idservice.updateDep(dep);
		System.out.println("222222222222222222222222222222222\t"+i+"\t1111111111111111111111111111111111");
		res.getWriter().print(i);
	}
	//查询方法
	@RequestMapping(value="/select.do")
	public void select(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(DepartmentInfoController.class).debug("进入controller 1111111111111111111111111111111111111111111111111111111111111111111111111111111111");
		//获取当前页
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取每页显示条数
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key = req.getParameter("key")==null?"":req.getParameter("key");
		DepartmentInfo dep=new DepartmentInfo();
		dep.setDeptName(key);
		String jsonStr = idservice.selectDep(page,size,dep);
		System.out.println(jsonStr);
		res.getWriter().print(jsonStr);
		
	}
	//查询所有数据
	@RequestMapping("/selectById.do")
	public void selectById(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(DepartmentInfoController.class).debug("进入controller ");
		List<DepartmentInfo> dlist=idservice.selectDepById();
		Gson g=new Gson();
		String jsonDep=g.toJson(dlist);
		System.out.println(jsonDep);
		res.getWriter().print(jsonDep);
	}
	
}
