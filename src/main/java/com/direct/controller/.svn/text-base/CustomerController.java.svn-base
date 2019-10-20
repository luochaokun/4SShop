package com.direct.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.DefaultEditorKit.CutAction;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.CustomerInfo;
import com.direct.service.ICustomerService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/cusC")
public class CustomerController {
	@Autowired
	@Qualifier("cusService")
	private ICustomerService icService;
	
	//查询客户信息
	@RequestMapping(value="/queryCustomer")
	public void queryCustomer(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//设置字节编码
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//获取当前页及每页条数数据
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key = req.getParameter("key")==null?"":req.getParameter("key");
		CustomerInfo customer = new CustomerInfo();
		customer.setPhone(key);
		//调用业务层方法查询客户
		String jsonStr = icService.queryCustomer(curr,size,customer);
		//传递客户信息到客户端
		resp.getWriter().print(jsonStr);
	}
	
	//添加客户
	@RequestMapping(value="/addCustomer")
	public void addCustomer(CustomerInfo customer, HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层方法判断号码是否已存在
		int isExist = icService.isExist(customer.getPhone());
		//向客户端返回号码已被注册信息
		if(isExist!=0){
			resp.getWriter().print("exist");
			return;
		}
		//调用业务层添加方法，储存结果
		boolean result = icService.insertCustomer(customer);
		//判断添加是否成功
		if(result){
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
	}
	
	//删除客户
	@RequestMapping(value="/deleteCustomer")
	public void deleteCustomer(int cid,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层删除方法，储存结果
		boolean result = icService.deleteCustomer(cid);
		//向客户端返回删除结果
		resp.getWriter().print(result);
	}
	
	//修改客户
	@RequestMapping(value="/updateCustomer")
	public void updateCustomer(CustomerInfo customer, HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层修改方法，储存结果
		boolean result = icService.updateCustomer(customer);
		//向客户端返回修改结果
		resp.getWriter().print(result);
	}
	//登录
	@RequestMapping(value="/login")
	public void logCustomer(CustomerInfo customer, HttpServletRequest req,HttpServletResponse resp) throws IOException{
	
		
		int result = icService.login(customer);
		//判断添加是否成功
		System.out.println(result+".......................................................");
		if(result==1){
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
	}
	
	//查询所有数据
	@RequestMapping("/selectById.do")
	public void selectById(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(CustomerController.class).debug("进入controller ");
		List<CustomerInfo> clist=icService.selectById();
		Gson g=new Gson();
		String jsonCus=g.toJson(clist);
		System.out.println(jsonCus);
		res.getWriter().print(jsonCus);
	}
}
