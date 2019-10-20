package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IEmployeeInfoDao;
import com.direct.dao.ILeaveInfoDao;
import com.direct.dao.IPositionInfoDao;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.LeaveInfoEntity;
import com.direct.entity.PositionInfoEntity;
import com.direct.service.ILeaveInfoService;

@Service("LEService")
public class LeaveInfoServiceImpl implements ILeaveInfoService {
	
	@Autowired
    private ILeaveInfoDao idao;
	
	
	public int addTe(LeaveInfoEntity te) {
		// TODO Auto-generated method stub
		return idao.addTe(te);
	}

	public int upTe(LeaveInfoEntity te) {
		// TODO Auto-generated method stub
		return idao.upTe(te);
	}

	public int delTe(int id) {
		// TODO Auto-generated method stub
		return idao.delTe(id);
	}

	public List<LeaveInfoEntity> selTe(LeaveInfoEntity le) {
		// TODO Auto-generated method stub
		return  idao.selTe(le);
	}

	public List<LeaveInfoEntity> selTeId(int id) {
		// TODO Auto-generated method stub
		return (List<LeaveInfoEntity>) idao.selTeId(id);
	}

	public int upTe2(LeaveInfoEntity ty) {
		// TODO Auto-generated method stub
		return idao.upTe2(ty);
	}

	public LeaveInfoEntity upsel(int id) {
		// TODO Auto-generated method stub
		return idao.upsel(id);
	}


}
