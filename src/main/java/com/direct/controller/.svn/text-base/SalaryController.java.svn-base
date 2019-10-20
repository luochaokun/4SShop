package com.direct.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.KaoQinInfoEntity;
import com.direct.entity.LeaveInfoEntity;
import com.direct.entity.SalaryEntity;
import com.direct.service.ISalaryService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/Salary")
public class SalaryController {
	
	@Autowired
	@Qualifier("SAService")
	private ISalaryService isa;

	//转换时间类型
	@InitBinder()
	public void binder(WebDataBinder binder){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor cde=new CustomDateEditor(sdf, true);
		binder.registerCustomEditor(Date.class,cde);
	} 
	
	@RequestMapping("/SAAll.do")
	public void selectAll(HttpServletRequest req,HttpServletResponse res,SalaryEntity sa) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页数与每页条数
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		EmployeeInfoEntity emp=new EmployeeInfoEntity();
		emp.setEmpName(key);
		sa.setEmp(emp);
		//使用dao层的查询方法并将结果存入一个部门实体类集合中
		Page pa=PageHelper.startPage(page, size, true);
		List<SalaryEntity> list =isa.selAll(sa);
		//转换为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(list);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+pa.getTotal()+",\"data\":"+jsonStr+"}";
		res.getWriter().print(jsonStr);
	}
	
	@RequestMapping("/SAId.do")
	public void selectId(HttpServletRequest req,HttpServletResponse res,int id) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页数与每页条数
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		//使用dao层的查询方法并将结果存入一个部门实体类集合中
		Page pa=PageHelper.startPage(page, size, true);
		List<SalaryEntity> list =isa.selempId(id);
		//转换为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(list);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+pa.getTotal()+",\"data\":"+jsonStr+"}";
		res.getWriter().print(jsonStr);
	}
	
	@RequestMapping("/up.do")
	public void up(SalaryEntity se,HttpServletResponse res) throws IOException{
		int i=isa.up(se);
		if(i>0){
			res.getWriter().print(i);
		}
	}
	
	@RequestMapping(value="sel")
	public ModelAndView upsel(int id) throws IOException {
		ModelAndView mo=new ModelAndView("Salary/financial");
		SalaryEntity sa=isa.selid(id);
		if(sa!=null)
		{
			mo.addObject("sa", sa);
			mo.setViewName("Salary/financialInfo");
		}
		return mo;
	}	
	
	@RequestMapping("/addC.do")
	public void add(int empId,HttpServletResponse res) throws IOException{
		System.out.println(1);
		SalaryEntity sa=isa.addsel(empId);
		if(sa!=null){
			System.out.println(2);
			res.getWriter().print(0);
		}else {
			int i=isa.add(empId);
			if(i>0){
				System.out.println(0);
				isa.addId(empId);
				res.getWriter().print(i);
			}
		}
	}
}
