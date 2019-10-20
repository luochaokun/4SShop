package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ISaleDao;
import com.direct.entity.SaleInfo;
import com.direct.service.ISaleService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("saService")
public class SaleService implements ISaleService{

	@Autowired
	public ISaleDao idao;
	@Override
	public int insertSal(SaleInfo sa) {
		// TODO Auto-generated method stub
		return idao.insertSal(sa);
	}

	@Override
	public int deleteSal(int sId) {
		// TODO Auto-generated method stub
		return idao.deleteSal(sId);
	}

	@Override
	public int updateSal(SaleInfo sa) {
		// TODO Auto-generated method stub
		return idao.updateSal(sa);
	}

	@Override
	public String selectSal(int curr, int size, SaleInfo sa) {
		// TODO Auto-generated method stub
		Page p=PageHelper.startPage(curr, size, true);
		List<SaleInfo> slist=idao.selectSal(sa);
		int count=(int) p.getTotal();
		Gson g=new Gson();
		String JsonSal=g.toJson(slist);
		JsonSal="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+JsonSal+"}";
		return JsonSal;
	}

	@Override
	public List<SaleInfo> selectSalById() {
		// TODO Auto-generated method stub
		return idao.selectSalById();
	}

}
