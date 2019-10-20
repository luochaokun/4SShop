package com.direct.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.enterprise.inject.Alternative;
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

import com.direct.entity.RecruitmentInfo;
import com.direct.service.IRecruitmentInfoService;

/**
 * 招聘信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/rec")
public class RecruitmentInfoController {
	@Autowired
	@Qualifier("irservice")
	private IRecruitmentInfoService iservice;
	
	//时间转换
		@InitBinder()
		public void binder(WebDataBinder binder){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			CustomDateEditor cde=new CustomDateEditor(sdf, true);
			binder.registerCustomEditor(Date.class,cde);
		}

	
	//分页查询
	@RequestMapping("/select.do")
	public void select(HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(RecruitmentInfoController.class).debug("进入Controller！");
		res.setCharacterEncoding("utf-8");
	
		//获取当前页
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
	
		//获取显示条数
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
	
		String rec=iservice.select(curr, size);
		
		Logger.getLogger(RecruitmentInfoController.class).debug("rec的值为："+rec);
		res.getWriter().print(rec);
	}
	
	//添加信息
	@RequestMapping("/add.do")
	public  void insert(HttpServletRequest req,HttpServletResponse res,RecruitmentInfo rec) throws IOException{
		Logger.getLogger(RecruitmentInfoController.class).debug("进入Controller---------------------------------------！");
		int i=iservice.insert(rec);
		Logger.getLogger(RecruitmentInfoController.class).debug("i的值为："+i);
		res.getWriter().print(i);
	}
	//删除消息
	@RequestMapping("/delete.do")
	public void delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(RecruitmentInfoController.class).debug("进入Controller！");
		String ids=req.getParameter("ids");
		Logger.getLogger(RecruitmentInfoController.class).debug("ids的值为："+ids+"\t11111111111111111");
		int i=iservice.delete(ids);
		res.getWriter().print(i);
	}
}
