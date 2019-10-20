package com.direct.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.inject.Alternative;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IRecruitmentInfoDao;
import com.direct.entity.RecruitmentInfo;
import com.direct.service.IRecruitmentInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("irservice")
public class RecruitmentInfoServiceimpl implements IRecruitmentInfoService {
	
	@Autowired
	private IRecruitmentInfoDao irdao;
	
	public String select(int page, int size) {
		Logger.getLogger(RecruitmentInfoServiceimpl.class).debug("进入Service!");
		System.out.println(page+"\t111\t"+size);
		Page pag=PageHelper.startPage(page, size);
		List<RecruitmentInfo> rlist=irdao.select();
		int count=(int) pag.getTotal();
		Gson g=new Gson();
		String jsonSt=g.toJson(rlist);
	
		jsonSt="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonSt+"}";
		return jsonSt;
	}

	
	public int insert(RecruitmentInfo rec) {
		return irdao.insert(rec);
	}

	
	public int delete(String rid) {
		String[] id=rid.split(",");
		List<Integer> ilist=new ArrayList<Integer>();
		for(String s:id){
			ilist.add(Integer.parseInt(s));
		}
		int i=irdao.delete(ilist);
		return i;
	}


	@Override
	public List<RecruitmentInfo> qiantaiselect() {
		// TODO Auto-generated method stub
		return null;
	}

}
