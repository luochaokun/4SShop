package com.direct.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.direct.entity.PositionInfoEntity;
import com.direct.service.IPositionInfoService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/Pos")
public class PositionInfoController {
	
	//引用Service业务层对象
	@Autowired
	@Qualifier("ServicePos")
	private IPositionInfoService ipService;
	
	//添加职位
	@RequestMapping("add.do")
	public void  add(PositionInfoEntity pos,HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(PositionInfoEntity.class).debug("进入Controller");
		Logger.getLogger(PositionInfoController.class).debug("职位名称为："+pos.getPname());
		int i=ipService.insertPos(pos);
		System.out.println(i+"\t iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
		res.getWriter().print(i);
	}
	
	//删除职位
	@RequestMapping("delete.do")
	public void  delete(HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(PositionInfoEntity.class).debug("进入Controller");
		int pid=Integer.parseInt(req.getParameter("pid"));
		int i=ipService.deletePos(pid);
		res.getWriter().print(i);
	}
	//修改职位
	@RequestMapping("/update.do")
	public void update(PositionInfoEntity pos,HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(PositionInfoEntity.class).debug("进入Controller");
		System.out.println(pos.getDept().getDeptId());
		int i=ipService.updatePos(pos);
		
		res.getWriter().print(i);
	}
	//分页查询
	@RequestMapping("/select.do")
	public void select(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		//获取当前页
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取显示条数
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		PositionInfoEntity pos=new PositionInfoEntity();
		pos.setPname(key);
		String jsonPos=ipService.selPos(curr, size, pos);
		res.getWriter().print(jsonPos);
	}
	//根据部门ID查询该部门下的所有职位数据
	@RequestMapping("selectPos.do")
	public void selectPos(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(PositionInfoController.class).debug("进入Controller");
		int pid=Integer.parseInt(req.getParameter("id"));
		System.out.println("Pid的值是："+pid);
		List<PositionInfoEntity> plist=ipService.selPosId(pid);
		Gson g=new Gson();
		String jsonPos=g.toJson(plist);
		Logger.getLogger(PositionInfoController.class).debug(jsonPos);
		res.getWriter().print(jsonPos);
	}
	//查询所有职位数据
	@RequestMapping("selectPos1.do")
	public void selectPos1(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(PositionInfoController.class).debug("进入Controller");
		List<PositionInfoEntity> plist=ipService.selPos1();
		Gson g=new Gson();
		String jsonPos=g.toJson(plist);
		Logger.getLogger(PositionInfoController.class).debug(jsonPos);
		res.getWriter().print(jsonPos);
	}
}
