package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IApplyDao;
import com.direct.entity.ApplyInfo;
import com.direct.pageutil.PageModel;
import com.direct.service.IApplyService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("appService")
public class ApplyService implements IApplyService {

	//借口dao
	@Autowired
	public IApplyDao iadao;
	
	public int insertApp(ApplyInfo app) {
		
		return iadao.insertApp(app);
	}

	
	//修改
	public int updateApp(ApplyInfo app) {
		
		return iadao.updateApp(app);
	}

	
	public int deleteApp(int aId) {
		
		return iadao.deleteApp(aId);
	}

	
	

	// 查询
	public String selectApp(int curr,int size,ApplyInfo app) {
		// TODO Auto-generated method stub
//		初始化分页的当前页数和显示条数
		Page page = PageHelper.startPage(curr, size, true);
		//得到数据集合
		List<ApplyInfo> alist = iadao.selectApp(app);
		//得到总条数
		int count = (int)page.getTotal();
		
		//封装pm
		Gson g=new Gson();
		String jsonStr=g.toJson(alist);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonStr+"}";
		return jsonStr;
	}


	@Override
	public List<ApplyInfo> selectAppById() {
		// TODO Auto-generated method stub
		return iadao.selectById();
	}

}
