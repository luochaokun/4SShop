package com.direct.service;

import java.util.List;

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.TransferInfo;

public interface IEmployeeInfoService {
	
	public EmployeeInfoEntity login(EmployeeInfoEntity ee);	//员工登录
	
	public int insertEmp(EmployeeInfoEntity emp);//添加方法
	
	public int deleteEmp(int empId);//删除方法
	
	public int updateEmp(EmployeeInfoEntity emp);//修改方法
	
	public String selEmp(EmployeeInfoEntity emp,int curr,int size);//查询所有员工（模糊 分页）
	

	public int updateLz(String ids);//批量离职
	

	
	
	
	public List<EmployeeInfoEntity> selectEmpById(); //查询员工

	

	public EmployeeInfoEntity selectTg(int ids);//根据ID 查询该员工的信息回显
	
	public int updateTg(TransferInfo tra);//员工调岗方法


	public String selectTgjl(TransferInfo tra, int curr, int size);//查询调岗记录


}
