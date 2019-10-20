package com.direct.service;

import java.util.List;

import com.direct.entity.DepartmentInfo;
import com.direct.pageutil.PageModel;
/**
 * 部门管理业务层（Service层接口）
 * @author Administrator
 *
 */
public interface CopyOfIDepartmentInfoService {
	
	public int insertDep(DepartmentInfo dep); //添加部门
	
	public int deleteDep(int deptId); //删除部门
	
	public int updateDep(DepartmentInfo dep); //修改部门
	


	//public String selectDep(int curr,int size); //查询部门所有信息（分页）

	public String selectDep(int curr,int size,DepartmentInfo dep); //查询部门所有信息（分页）

	
	public List<DepartmentInfo> selectDepById(); //查询部门信息


}
