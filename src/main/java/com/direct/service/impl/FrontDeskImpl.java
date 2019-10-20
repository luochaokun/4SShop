package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IRecruitmentInfoDao;
import com.direct.entity.RecruitmentInfo;
import com.direct.service.IRecruitmentInfoService;

@Service("FrontDesk")
public class FrontDeskImpl implements IRecruitmentInfoService {

	@Autowired
	public IRecruitmentInfoDao Ire;
	
	@Override
	public String select(int page, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(RecruitmentInfo rec) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String ids) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RecruitmentInfo> qiantaiselect() {
		// TODO Auto-generated method stub
		return Ire.qiantaiselect();
	}

}
