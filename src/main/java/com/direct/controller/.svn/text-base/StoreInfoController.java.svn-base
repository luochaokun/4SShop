package com.direct.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.MoveAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.CustomerInfo;
import com.direct.entity.StoreInfoEntity;
import com.direct.service.IStoreInfoService;
import com.direct.service.impl.StoreInfoService;

@Controller
@RequestMapping("/Store")
public class StoreInfoController {
	@Autowired
	@Qualifier("StoeService")
	private  IStoreInfoService istore;
	
	//查询
	@RequestMapping("/select.do")
	public ModelAndView storeselect(){
		System.out.println("sdcvsdvsvvvvvvvvvvvvdsvsagraEFHFD");
		List<StoreInfoEntity> list= istore.queryStore();
		for(StoreInfoEntity sto:list){
			System.out.println(sto.getName()+"..................................................");
		}
		ModelAndView mav=new ModelAndView("Thefrontdesk/maintenance");
		mav.addObject("store", list);
		return mav;
	}
	//添加
	@RequestMapping("/add.do")
	public void addStore(StoreInfoEntity stro, HttpServletRequest req,HttpServletResponse resp) throws IOException{
	
		//调用业务层添加方法，储存结果
		boolean result = istore.insertStore(stro);
		//判断添加是否成功
		if(result){
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
	}
	//删除
	@RequestMapping("/delete.do")
	public void deleteStore(int sid,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层删除方法，储存结果
		boolean result = istore.deleteStore(sid);
		//向客户端返回删除结果
		resp.getWriter().print(result);
	}
	//修改
	@RequestMapping("/upodate.do")
	public void updateStroe(StoreInfoEntity stro, HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//调用业务层修改方法，储存结果
		boolean result = istore.updateStoreIn(stro);
		//向客户端返回修改结果
		resp.getWriter().print(result);
	}
	//后台程序
	@RequestMapping("/sel.do")
	public void queryCustomer(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//设置字节编码
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//获取当前页及每页条数数据
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key = req.getParameter("key")==null?"":req.getParameter("key");
		StoreInfoEntity customer = new StoreInfoEntity();
		customer.setPhone(key);
		//调用业务层方法查询客户
		String jsonStr = istore.queryStore1(curr,size,customer);
		//传递客户信息到客户端
		resp.getWriter().print(jsonStr);
	}
	
}
