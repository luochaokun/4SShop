package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ILeaveTypeDao;
import com.direct.entity.LeaveTypeEntity;
import com.direct.service.ILeaveTypeService;

@Service("LTService")
public class LeaveTypeServiceImpl implements ILeaveTypeService {
	
	@Autowired
    private ILeaveTypeDao idao;
	
	public List<LeaveTypeEntity> selType() {
		// TODO Auto-generated method stub
		return idao.selType();
	}

	public LeaveTypeEntity selTypeId(int id) {
		// TODO Auto-generated method stub
		return idao.selTypeId(id);
	}

}
