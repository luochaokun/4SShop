package com.direct.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

import com.direct.entity.HireInfo;
import com.direct.service.IHireInfoService;
/**
 * 应聘信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/hir")
public class HireInfoController {
		
	    //依赖注入
		@Autowired
		@Qualifier("service")
		private IHireInfoService iservice;
		
		//时间转换
		@InitBinder
		public void i(WebDataBinder binder){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			CustomDateEditor cde=new CustomDateEditor(sdf, true);
			binder.registerCustomEditor(Date.class,cde);
		}
		//分页查询（模糊）
		@RequestMapping("/select.do")
		public void select(HttpServletRequest req,HttpServletResponse res) throws IOException{
			Logger.getLogger(HireInfoController.class).debug("进入Controller！");
			res.setCharacterEncoding("utf-8");
			//获取当前页
			int page =req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
			//获取显示条数
			int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
			//获取页面参数
			String stname=req.getParameter("key")==null?"":req.getParameter("key");
			System.out.println(stname+"\t111111111111111");
			//调用Service方法
			String jsonst=iservice.select(stname, page, size);
			Logger.getLogger(HireInfoController.class).debug("jsonst的值为："+jsonst+"\t11111111");
			//把后台查询得到的参数响应回页面
			res.getWriter().print(jsonst);
		}
		//审核应聘者（修改）
		@RequestMapping("update.do")
		public  void update(HttpServletRequest req,HttpServletResponse res,HireInfo hi) throws IOException{
			Logger.getLogger(HireInfoController.class).debug("进入Controller！");
			Logger.getLogger(HireInfoController.class).debug("hi的值为："+hi);
			int i=iservice.update(hi);
			Logger.getLogger(HireInfoController.class).debug("i的值为："+i);
			res.getWriter().print(i);
		}
		//逻辑删除
		@RequestMapping("delete.do")
		public  void delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
			Logger.getLogger(HireInfoController.class).debug("进入Controller！");
			String ids=req.getParameter("ids");
			Logger.getLogger(HireInfoController.class).debug("ids的值为："+ids);
			int i=iservice.delete(ids);
			Logger.getLogger(HireInfoController.class).debug("i的值为："+i);
			res.getWriter().print(i);
		}
}
