package com.direct.controller;



import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.direct.entity.CustomerInfo;
import com.direct.entity.MakeAnAppointmentEntity;
import com.direct.entity.StoreInfoEntity;
import com.direct.service.MakeAnAppointmentService;

@Controller
@RequestMapping("/mak")
public class MakeAnAppointment {
	@Autowired
	@Qualifier("makeAn")
	private MakeAnAppointmentService mak;
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	CustomDateEditor cde=new CustomDateEditor(sdf, true);
	binder.registerCustomEditor(Date.class, cde);
	}
	
	@RequestMapping("/makean.do")
	public String addmake(MakeAnAppointmentEntity ma) {
		System.out.println("进来......................................................................................");
		int result = mak.addMake(ma);
		return "Thefrontdesk/sho";
	}
	//删除
	@RequestMapping("/delete.do")
	public void deleteStore(int mid,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层删除方法，储存结果
		boolean result = mak.deletemake(mid);
		//向客户端返回删除结果
		resp.getWriter().print(result);
	}
	//修改
	@RequestMapping("/upodate.do")
	public void updateStroe(MakeAnAppointmentEntity ma, HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层修改方法，储存结果
		boolean result = mak.updatemake(ma);
		//向客户端返回修改结果
		resp.getWriter().print(result);
	}
	@RequestMapping("/sel.do")
	public void queryCustomer(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//设置字节编码
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//获取当前页及每页条数数据
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		System.out.println(curr+"......................"+size);
		//获取模糊查询参数
		String key = req.getParameter("key")==null?"":req.getParameter("key");
		MakeAnAppointmentEntity name = new MakeAnAppointmentEntity();
		name.setName(key);
		System.out.println(name+"....................................................");
		//调用业务层方法查询客户
		String jsonStr = mak.querymake(curr, size, name);
		//传递客户信息到客户端
		resp.getWriter().print(jsonStr);
	}
}
