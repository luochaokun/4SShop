package com.direct.service;

import java.util.List;

import com.direct.entity.CarInfo;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.ExpenditureEntity;
import com.direct.entity.OutTypeEntity;
import com.direct.pageutil.PageModel;


public interface IExpenditureService {
	public int insertOutType(OutTypeEntity ote);
	public int deleteOutType(int id);
	public int updateOutType(OutTypeEntity ote);
	public  List<OutTypeEntity> queryOutType();
	public OutTypeEntity queryOutTypeById(int id);
	//其他支出记录
	public int insertExpenditure(ExpenditureEntity ee);
	public  List<ExpenditureEntity> queryExpenditure();
	public PageModel<ExpenditureEntity> queryExpenditurePage(int curr,int size);
	//查询员工
	public  List<EmployeeInfoEntity> queryStaff();
}
