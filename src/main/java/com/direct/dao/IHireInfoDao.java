package com.direct.dao;

import java.util.List;

import com.direct.entity.HireInfo;

public interface IHireInfoDao {
	public int update(HireInfo hi);//审核方法（修改）
	
	public int delete(List<Integer> idlist);//删除
	
	public  int insert (HireInfo hi);//添加方法

	public List<HireInfo> select(String hi);//分页模糊查询
}
