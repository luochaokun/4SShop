package com.direct.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.dao.IEmployeeInfoDao;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.ExpenditureEntity;
import com.direct.entity.OutTypeEntity;
import com.direct.pageutil.PageModel;
import com.direct.service.IExpenditureService;



@Controller
@RequestMapping("/expeC")
public class expenditureController {
	
	@Autowired
	@Qualifier("ExpenditureService")
	private IExpenditureService iexpen;
	
	
	
	
	@RequestMapping(value="/toinsertExpenditure")
	public ModelAndView toinsertExpenditure(){
		List<EmployeeInfoEntity> staffList = iexpen.queryStaff();
		List<OutTypeEntity> outList = iexpen.queryOutType();
		ModelAndView mav=new ModelAndView("addExpenditurn");
		mav.addObject("outList", outList);
		mav.addObject("staffList", staffList);
		return mav;
	}
	
	@RequestMapping(value="/insertExpenditure")
	public ModelAndView insertExpenditure(ExpenditureEntity ee){
		ee.setExpTime(new Date());
		int row = iexpen.insertExpenditure(ee);
		ModelAndView mav=new ModelAndView("expenditurn");
		mav.setViewName("redirect:queryExpenditure.do");
		return mav;
	}
	
	
	@RequestMapping(value="/queryExpenditure")
	public ModelAndView queryExpenditure(HttpServletRequest req){
		//分页显示:接收当前页
		int curr=1;
		String pageNo = req.getParameter("pageNo");//页面点击翻页时传递的当前页参数
		if(pageNo!=null && !"".equals(pageNo)){
			curr = Integer.parseInt(pageNo);
		}
		
		PageModel<ExpenditureEntity> exlist = iexpen.queryExpenditurePage(curr,6);
		List<ExpenditureEntity> lli = exlist.getList();
		for(ExpenditureEntity ll:lli){
			System.out.println(ll.getStaff().getEmpName()+"/"+ll.getStaff().getEmpId());
			
		}
		
		ModelAndView mav=new ModelAndView("expenditurnInfo");
		mav.addObject("exlist", exlist);
		return mav;
	}
	
	
	
	
	//----------------支出类型相关-----------------------
	@RequestMapping(value="/queryOutType")
	public ModelAndView queryOutType(){
		List<OutTypeEntity> outList = iexpen.queryOutType();
		ModelAndView mav=new ModelAndView("expenditurn");
		mav.addObject("outList", outList);
		return mav;
	}
	@RequestMapping(value="/queryOutTypeByid")
	public ModelAndView queryOutTypeByid( int id){
		OutTypeEntity ote = iexpen.queryOutTypeById(id);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.addObject("ote", ote);
		return mav;
	}
	
	@RequestMapping(value="/deleteOutType")
	public ModelAndView deleteOutType( int id){
		int row = iexpen.deleteOutType(id);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.setViewName("redirect:queryOutType.do");
		return mav;
	}
	@RequestMapping(value="/toupdateOutType")
	public ModelAndView toupdateOutType(int id){
		OutTypeEntity ote = iexpen.queryOutTypeById(id);
		ModelAndView mav=new ModelAndView("updateOutType");
		mav.addObject("toUpOte", ote);
		return mav;
	}
	@RequestMapping(value="/updateOutType")
	public ModelAndView updateOutType(OutTypeEntity ote){
		int row = iexpen.updateOutType(ote);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.setViewName("redirect:queryOutType.do");
		return mav;
	}
	@RequestMapping(value="/insertOutType")
	public ModelAndView insertOutType(OutTypeEntity ote){
		int row = iexpen.insertOutType(ote);
		ModelAndView mav=new ModelAndView("CarInfo");
		mav.setViewName("redirect:queryOutType.do");
		return mav;
	}
	
	
	
	
	
}
