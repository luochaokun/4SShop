package com.direct.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.KaoQinInfoEntity;
import com.direct.service.IKaoQinInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/KaoQin")
public class KaoQinInfoController {
	
	@Autowired
	@Qualifier("KQService")
	private IKaoQinInfoService ikq;

	//转换时间类型
	@InitBinder()
	public void binder(WebDataBinder binder){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor cde=new CustomDateEditor(sdf, true);
		binder.registerCustomEditor(Date.class,cde);
	} 
	
	@RequestMapping("/qd.do")
	public void add(HttpServletResponse res,KaoQinInfoEntity kq) throws IOException, ParseException{
		int id=kq.getEmp().getEmpId();
		System.out.println(id);
		KaoQinInfoEntity k=ikq.stlTimeId(id);
		if(k!=null){
			
			int i=ikq.up(kq);
			if(i>0){
				int j=ikq.upjobState(id);
				if(j>0)
				{
					res.getWriter().print(j);
				}else{
					res.getWriter().print(i);
				}
			}
			
		}else{
			System.out.println("sfdsf");
			int i=ikq.add(kq);
			if(i>0){
				int j=ikq.upjobState(id);
				if(j>0)
				{
					res.getWriter().print(j);
				}
			}
			else{
				res.getWriter().print(i);
			}
			
		}
	}
	
	@RequestMapping("/KaoQinAll.do")
	public void selectAll(HttpServletRequest req,HttpServletResponse res,KaoQinInfoEntity kq) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页数与每页条数
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		EmployeeInfoEntity emp=new EmployeeInfoEntity();
		emp.setEmpName(key);
		kq.setEmp(emp);
		//使用dao层的查询方法并将结果存入一个部门实体类集合中
		Page pa=PageHelper.startPage(page, size, true);
		List<KaoQinInfoEntity> list = ikq.setAll(kq);
		//转换为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(list);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+pa.getTotal()+",\"data\":"+jsonStr+"}";
		res.getWriter().print(jsonStr);
	}
	
	@RequestMapping("/KaoQinEmpId.do")
	public void selectId(HttpServletRequest req,HttpServletResponse res,int id) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页数与每页条数
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		//使用dao层的查询方法并将结果存入一个部门实体类集合中
		Page pa=PageHelper.startPage(page, size, true);
		List<KaoQinInfoEntity> list = ikq.stlEmpId(id);
		for (KaoQinInfoEntity k : list) {
			System.out.println(k.getStartCardTime());
		}
		//转换为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(list);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+pa.getTotal()+",\"data\":"+jsonStr+"}";
		res.getWriter().print(jsonStr);
	}
}
