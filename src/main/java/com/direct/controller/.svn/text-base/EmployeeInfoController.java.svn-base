package com.direct.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.TransferInfo;
import com.direct.service.IEmployeeInfoService;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/EMPC")
public class EmployeeInfoController {

	@Autowired
	@Qualifier("EmpService")
	private IEmployeeInfoService iemp;
	
	//时间转换
	@InitBinder()
	public void binder(WebDataBinder binder){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor cde=new CustomDateEditor(sdf, true);
		binder.registerCustomEditor(Date.class,cde);
	}
	
	//退出系统
	@RequestMapping("/exit.do")
	private void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//创建作用域对象
		HttpSession session = request.getSession();
		//清除作用域对象
		session.invalidate();
		//清除完成跳转到登陆页面
		request.getRequestDispatcher("../admin/index/login.jsp").forward(request, response);
	}
	
	//调岗之前获取员工旧岗位的信息
	@RequestMapping("/selectTg.do")
	public  ModelAndView sleectTg(HttpServletRequest req,HttpServletResponse res){
		ModelAndView mav=new ModelAndView();
		int ids=Integer.parseInt(req.getParameter("ids"));
		EmployeeInfoEntity emp=iemp.selectTg(ids);
		System.out.println("111111\t"+emp.getEmpName()+"\t"+emp.getPos().getPname()+"\t"+emp.getPos().getDept().getDeptName());
		mav.setViewName("EmployeeInfo_tg");//跳转到指定页面
		mav.addObject("em", emp); //为跳转的指定页面存值
		return mav;
	}
	//员工调岗添加记录表
	@RequestMapping("/tg.do")
	public void tg(HttpServletRequest req,HttpServletResponse res ,TransferInfo tra) throws IOException{
		Logger.getLogger(EmployeeInfoController.class).debug("进入Conmtroller");
		System.out.println("编号："+tra.getEmp().getEmpId()+"\t姓名："+tra.getEmp().getEmpName()+"\t时间："+tra.getExpendTime()+"\t备注:"+tra.getRemark()+"\t旧职位\t"+tra.getJformer()+"\t旧部门:"+tra.getJdep()+"\t新职位："+tra.getFormer().getPid());
		Logger.getLogger(EmployeeInfoController.class).debug("进入Controller");
		int i=iemp.updateTg(tra);

		res.getWriter().print(i);
	}
	//分页查询调岗记录表
	@RequestMapping("selectTgjl.do")
	public void selectTgjl(HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(EmployeeInfoController.class).debug("进入Conmtroller");
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(EmployeeInfoController.class).debug("进入Conmtroller");
		//获取当前页
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取显示条数、
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		EmployeeInfoEntity emp=new EmployeeInfoEntity();
		emp.setEmpName(key);
		TransferInfo tra =new TransferInfo();
		tra.setEmp(emp);
		System.out.println(emp+"\t11111111111111111111111111");
		String jsonEmp=iemp.selectTgjl(tra, curr, size);
		System.out.println(jsonEmp);
		res.getWriter().print(jsonEmp);
	
	}
	//员工离职
	@RequestMapping("lz.do")
	public void lz(HttpServletRequest req,HttpServletResponse res) throws IOException{
		Logger.getLogger(EmployeeInfoController.class).debug("进入Controller");
		String ids= req.getParameter("ids");
		int idsStr=iemp.updateLz(ids);
		
		res.getWriter().print(idsStr);
		

	}

	//修改员工
	@RequestMapping("/update.do")
	public void updateEmp(HttpServletRequest req,HttpServletResponse res,EmployeeInfoEntity emp) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(EmployeeInfoController.class).debug("进入Controller");
		int i=iemp.updateEmp(emp);
		res.getWriter().print(i);
	}
	//添加员工
	@RequestMapping("/add.do")
	public void add(HttpServletRequest req,HttpServletResponse res,EmployeeInfoEntity emp) throws IOException{
		Logger.getLogger(EmployeeInfoController.class).debug("进入Conmtroller");
		int i=iemp.insertEmp(emp);
		res.getWriter().print(i);
	}
	
	//分页查询
	@RequestMapping("/select.do")
	public void  select(EmployeeInfoEntity emp,HttpServletRequest req, HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(EmployeeInfoController.class).debug("进入Conmtrollerselect.do");
		//获取当前页
		int curr=req.getParameter("page")==null?1:Integer.parseInt(req.getParameter("page"));
		//获取显示条数、
		int size=req.getParameter("limit")==null?3:Integer.parseInt(req.getParameter("limit"));
		//获取模糊查询参数
		String key=req.getParameter("key")==null?"":req.getParameter("key");
		EmployeeInfoEntity emp1=new EmployeeInfoEntity();
		emp1.setEmpName(key);
		String jsonEmp=iemp.selEmp(emp1, curr, size);
		res.getWriter().print(jsonEmp);
	}
	//删除员工
	@RequestMapping("delete.do")
	public  void  delete(HttpServletRequest req, HttpServletResponse res) throws IOException{
		Logger.getLogger(EmployeeInfoController.class).debug("进入Conmtroller");
		int empId=Integer.parseInt(req.getParameter("empId"));
		int i=iemp.deleteEmp(empId);
		res.getWriter().print(i);
	}
	

	//查询所有数据
	@RequestMapping("/selectById.do")
	public void selectById(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("utf-8");
		Logger.getLogger(DepartmentInfoController.class).debug("进入controller ");
		List<EmployeeInfoEntity> dlist=iemp.selectEmpById();
		Gson g=new Gson();
		String jsonEmp=g.toJson(dlist);
		System.out.println(jsonEmp);
		res.getWriter().print(jsonEmp);
	}
	
	//员工登陆
	@RequestMapping("/login.do")
	public void  login(EmployeeInfoEntity ee,HttpServletRequest request, HttpServletResponse response) throws IOException{
		//创建作用域对象
		HttpSession session = request.getSession();
		//调用登录查询方法
		EmployeeInfoEntity emp=iemp.login(ee);
		System.out.println(emp.getEmpName());
		
		//判断emp是否为空
		if(emp!=null)
		{
			//将管理员实体存入作用域
			session.setAttribute("emp", emp);
			response.getWriter().print("true");//返回成功信息
			
		}
		else
		{
			response.getWriter().print("false");//返回失败信息
		}
	}
}
