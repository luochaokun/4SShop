package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IPositionInfoDao;
import com.direct.entity.PositionInfoEntity;
import com.direct.service.IPositionInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("ServicePos")
public class PositionInfoServiceimpl implements IPositionInfoService {
	
	//引用dao接口对象
	@Autowired
	private IPositionInfoDao ipdao;
	
	//添加方法
	public int insertPos(PositionInfoEntity pos) {
		return ipdao.insertPos(pos);
	}

	//删除方法
	public int deletePos(int pid) {
		return ipdao.deletePos(pid);
	}

	//修改方法
	public int updatePos(PositionInfoEntity pos) {
		return ipdao.updatePos(pos);
	}

	//查询单条数据
	public List<PositionInfoEntity> selPosId(int id) {
		return ipdao.selPosId(id);
	}

	//分页模糊查询
	public String selPos(int curr, int size,PositionInfoEntity pos) {
		Page page=PageHelper.startPage(curr, size, true);
		List<PositionInfoEntity> plist=ipdao.selPos(pos);
		int count=(int) page.getTotal(); 
		Gson g=new Gson();
		String jsonPos=g.toJson(plist);
		jsonPos="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonPos+"}";
		return jsonPos;
	}
	
	//查询所有职位数据
	public List<PositionInfoEntity> selPos1() {
		return ipdao.selPos1();
	}

}
