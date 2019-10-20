package com.direct.dao;

import java.util.List;

import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.TransferInfo;

public interface IEmployeeInfoDao {
	
	public int insertEmp(EmployeeInfoEntity emp);//添加方法
	
	public int deleteEmp(int empId);//删除方法
	
	public int updateEmp(EmployeeInfoEntity emp);//修改方法
	
	public EmployeeInfoEntity selEmpId(int id);//根据id查询员工
	
	public List<EmployeeInfoEntity> selEmp(EmployeeInfoEntity emp);//查询所有员工（模糊 分页）
	
	public EmployeeInfoEntity login(EmployeeInfoEntity ee);//根据账号和密码查询员工

	
	
	
	public List<EmployeeInfoEntity> selectEmpById(); //查询员工

	
	public EmployeeInfoEntity selectTg(int ids);//根据ID 查询该员工的信息回显
	
	public int updateLz(List<Integer> ids);//批量离职
	
	public int updateTg(TransferInfo tra);//员工调岗方法
	public int updateJub(TransferInfo tra);//添加员工调岗记录表方法
	public List<TransferInfo> selectTgjl(TransferInfo tra);//调岗记录表方法


} 

