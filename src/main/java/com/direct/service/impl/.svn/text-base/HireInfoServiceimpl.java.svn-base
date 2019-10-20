package com.direct.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IHireInfoDao;
import com.direct.entity.HireInfo;
import com.direct.service.IHireInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;
@Service("service")
public class HireInfoServiceimpl implements IHireInfoService {
	@Autowired
	private IHireInfoDao ihdao;
	
	public int insert(HireInfo hi) {
		return 0;
	}

	//分页查询（模糊）
	public String select(String hi,int page,int size) {
		Page pag=PageHelper.startPage(page, size);
		List<HireInfo> hlist=ihdao.select(hi);
		int count =(int) pag.getTotal();
		Gson g=new Gson();
		String json=g.toJson(hlist);
		json="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+json+"}";
		return json;
	}
	
	//修改状态
	public int update(HireInfo hi) {
		return ihdao.update(hi);
	}

	//逻辑删除
	public int delete(String ids) {
		Logger.getLogger(HireInfoServiceimpl.class).debug("进入Controller！业务层");
		String[] str=ids.split(",");
		List<Integer> idlist=new ArrayList<Integer>();
		for(String s : str){
			idlist.add(Integer.parseInt(s));
			
		}
		int i=ihdao.delete(idlist);
		System.out.println(i+"\tiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
		return i;
	}

}
