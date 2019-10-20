package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IStoreInfoDao;
import com.direct.entity.CustomerInfo;
import com.direct.entity.StoreInfoEntity;
import com.direct.service.IStoreInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("StoeService")
public class StoreInfoService implements IStoreInfoService{
	
	@Autowired
	private IStoreInfoDao isdao;
	
	public boolean insertStore(StoreInfoEntity store) {
		// TODO Auto-generated method stub
		return isdao.insertStore(store);
	}

	
	public boolean deleteStore(int cid) {
		// TODO Auto-generated method stub
		return isdao.deleteStore(cid);
	}

	
	public boolean updateStoreIn(StoreInfoEntity store) {
		// TODO Auto-generated method stub
		return isdao.updateStoreIn(store);
	}

	
	public List<StoreInfoEntity> queryStore() {
		// TODO Auto-generated method stub
		return isdao.queryStore();
	}


	public StoreInfoEntity queryStorerById(int cid) {
		// TODO Auto-generated method stub
		return isdao.queryStorerById(cid);
	}

	
	public int allCount() {
		// TODO Auto-generated method stub
		return isdao.allCount();
	}


	public String queryStore1(int curr,int size,StoreInfoEntity store) {
		// TODO Auto-generated method stub
		Page p=PageHelper.startPage(curr, size, true);
		//调用数据访问层方法查询数据
		List<StoreInfoEntity> dlist=isdao.queryStore1(store);
		int count=(int) p.getTotal();
		//转为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(dlist);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonStr+"}";
		//返回json数据
		return jsonStr;
	}

}
