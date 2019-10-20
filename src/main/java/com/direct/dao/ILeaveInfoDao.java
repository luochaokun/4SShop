package com.direct.dao;

import java.util.List;

import com.direct.entity.LeaveInfoEntity;



public interface ILeaveInfoDao {
		
	//添加请假条
	public int addTe(LeaveInfoEntity te);
	
	//修改请假条
	public int upTe(LeaveInfoEntity ty);
	
	//修改请假条
	public int upTe2(LeaveInfoEntity ty);
	
	//删除请假条
	public int delTe(int id);
	
	//查询请假条
	public List<LeaveInfoEntity> selTe(LeaveInfoEntity le);
	
	//根据员工id查询请假条
	public List<LeaveInfoEntity> selTeId(int id);
	
	//根据员工id查询请假条
	public LeaveInfoEntity upsel(int id);
	
	
}
