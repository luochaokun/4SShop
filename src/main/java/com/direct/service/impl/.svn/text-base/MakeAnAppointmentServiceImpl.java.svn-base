package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.MakeAnAppointmentDao;
import com.direct.entity.MakeAnAppointmentEntity;
import com.direct.entity.StoreInfoEntity;
import com.direct.service.MakeAnAppointmentService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("makeAn")
public class MakeAnAppointmentServiceImpl implements MakeAnAppointmentService {
	
	@Autowired
	private MakeAnAppointmentDao imake;
	
	public int addMake(MakeAnAppointmentEntity make) {
		// TODO Auto-generated method stub
		return imake.addMake(make);
	}
	public boolean deletemake(int mid) {
		// TODO Auto-generated method stub
		return imake.deletemake(mid);
	}
	public boolean updatemake(MakeAnAppointmentEntity make) {
		// TODO Auto-generated method stub
		return imake.updatemake(make);
	}
	public String querymake(int curr,int size,MakeAnAppointmentEntity make) {
		// TODO Auto-generated method stub
		Page p=PageHelper.startPage(curr, size, true);
		//调用数据访问层方法查询数据
		//List<MakeAnAppointmentEntity> dlist=imake.querymake();
		List<MakeAnAppointmentEntity> dlist=imake.querymake(make);
		int count=(int) p.getTotal();
		//转为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(dlist);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonStr+"}";
		//返回json数据
		return jsonStr;
	}

	

}
