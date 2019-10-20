package com.direct.service;

import java.util.List;

import com.direct.entity.RecruitmentInfo;

public interface IRecruitmentInfoService {
	public String select(int page,int size);//分页查询所有信息
	public int  insert (RecruitmentInfo rec); //添加信息
	public int  delete (String ids); //删除信息
	public List<RecruitmentInfo> qiantaiselect();
}
