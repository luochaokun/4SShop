package com.direct.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.SaleInfo;
import com.direct.service.ISaleService;


@Controller
@RequestMapping(value="/salC")
public class SaleController {
	
	@Autowired
	@Qualifier("saService")
	private ISaleService iservice;
	//查询方法
	
	@RequestMapping(value="/select")
	public void select(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(SaleController.class).debug("进入controller 1111111111111111111111111111111111111111111111111111111111111111111111111111111111");
		//获取当前页
		int page=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取每页显示条数
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key = req.getParameter("key")==null?"":req.getParameter("key");
		SaleInfo sa=new SaleInfo();
//		dep.setDeptName(key);
//		EmployeeInfoEntity emp=sa.getEmpInfo();
//		emp.setEmpName("key");
		String jsonStr = iservice.selectSal(page, size, sa);
		System.out.println(jsonStr);
		res.getWriter().print(jsonStr);
		
	}
	
	
	//添加
	@RequestMapping(value="/add")
	public void addsApp(SaleInfo sa,HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		sa.setAdvance((sa.getReceivable())-(sa.getReceipts()));
		
		System.out.println("CarAdd添加------------------------------"+sa.getAdvance());
//		System.out.println(app.getAppName()+"\t"+app.getInmoney());
		int count=iservice.insertSal(sa);
		System.out.println(count);
		res.getWriter().print(count);
	}
	
	//删除方法
	@RequestMapping("/delete")
	public void delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(SaleInfo.class).debug("进入controller");
		int sId=Integer.parseInt(req.getParameter("sId"));
		int i=iservice.deleteSal(sId);
		res.getWriter().print(i);
	}
	
	//修改方法
	@RequestMapping("/update")
	public void update(HttpServletRequest req,HttpServletResponse res,SaleInfo sa) throws IOException{
		Logger.getLogger(SaleController.class).debug("进入controller ---------------------------------");
//		app.setInmoney((app.getMoney())-(app.getOutmoney()));
		sa.setAdvance((sa.getReceivable())-(sa.getReceipts()));
		sa.setReceivable(sa.getReceivable());
		System.out.println("应收"+sa.getReceivable());
		System.out.println("实收"+sa.getReceipts());
		System.out.println("补差"+sa.getAdvance());
		int count=iservice.updateSal(sa);
		
		System.out.println("222222222222222222222222222222222\t"+count+"\t1111111111111111111111111111111111"+"\t");
		res.getWriter().print(count);
	}
}
