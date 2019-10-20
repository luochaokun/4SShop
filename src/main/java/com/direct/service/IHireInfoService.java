package com.direct.service;

import java.util.List;

import com.direct.entity.HireInfo;

public interface IHireInfoService {
    
	public int update(HireInfo hi);//审核方法（修改）
	
	public int delete(String ids);//删除
	
	public  int insert (HireInfo hi);//添加方法

	public String select(String hi,int page,int size);//分页模糊查询
}
