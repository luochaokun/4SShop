package com.direct.service;

import java.util.List;

import com.direct.entity.LeaveTypeEntity;
import com.direct.pageutil.PageModel;

public interface ILeaveTypeService {
	
	//查询所有数据
	public List<LeaveTypeEntity> selType();
			
	//根据id查询数据
	public LeaveTypeEntity selTypeId(int id);
	
}
