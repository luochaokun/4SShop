package com.direct.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.CarInfo;
import com.direct.entity.RecruitmentInfo;
import com.direct.service.IRecruitmentInfoService;
@Controller
@RequestMapping("/FrontDesk")
public class FrontDeskJob {
	@Autowired
	@Qualifier("FrontDesk")
	private IRecruitmentInfoService irec;
	@RequestMapping(value="/qiantai.do")
	public ModelAndView selectCarInfo(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		List<RecruitmentInfo> list =irec.qiantaiselect();
		ModelAndView mav=new ModelAndView("Thefrontdesk/invite");
		mav.addObject("f", list);
	
		return mav;
	}
}
