package com.direct.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.controller.DepartmentInfoController;
import com.direct.dao.IDepamtmentInfoDao;
import com.direct.entity.DepartmentInfo;
import com.direct.pageutil.PageModel;
import com.direct.service.IDepartmentInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("IdService")
public class DepartmentInfoServlceimpl implements IDepartmentInfoService {
	
	
	
	@Autowired
	private IDepamtmentInfoDao iddao;
	//添加方法
	public int insertDep(DepartmentInfo dep) {
		return iddao.insertDep(dep);
	}

	//删除方法
	public int deleteDep(int deptId) {
		return iddao.deleteDep(deptId);
	}

	//修改方法
	public int updateDep(DepartmentInfo dep) {
		return iddao.updateDep(dep);
	}

	//分页查询方法
	public String selectDep(int curr,int size,DepartmentInfo dep) {
		Logger.getLogger(DepartmentInfoController.class).debug("进入业务层 11111111111111");
		Page p=PageHelper.startPage(curr, size, true);
		List<DepartmentInfo> dlist=iddao.selectDep(dep);
		int count=(int) p.getTotal();
		
		Gson g=new Gson();
		String jsonStr = g.toJson(dlist);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonStr+"}";
		
		return jsonStr;
	}

	//查询部门单条信息
	public List<DepartmentInfo> selectDepById() {
		return iddao.selectDepById();
	}

}
