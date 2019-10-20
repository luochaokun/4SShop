package com.direct.dao;

import java.util.List;

import com.direct.entity.ApplyInfo;


public interface IApplyDao {
	
	public int insertApp(ApplyInfo app); //添加采购信息
	
	public int updateApp(ApplyInfo app); //修改
	
	public int deleteApp(int aId);//删除
	
	//查询
	public List<ApplyInfo> selectById();
	public List<ApplyInfo> selectApp(ApplyInfo app);
}
