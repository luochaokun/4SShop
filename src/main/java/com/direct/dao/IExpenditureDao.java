package com.direct.dao;

import java.util.List;

import com.direct.entity.CarInfo;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.ExpenditureEntity;
import com.direct.entity.OutTypeEntity;

public interface IExpenditureDao {
	public int insertOutType(OutTypeEntity ote);
	public int deleteOutType(int id);
	public int updateOutType(OutTypeEntity ote);
	public List<OutTypeEntity> queryOutType();
	public OutTypeEntity queryOutTypeById(int id);
	////其他支出记录
	public int insertExpenditure(ExpenditureEntity ee);
	public  List<ExpenditureEntity> queryExpenditure();
	
	//
	public  List<EmployeeInfoEntity> queryStaff();
}
