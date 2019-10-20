package com.direct.entity;

import java.util.Date;

/**
 * 调岗实体类
 * @author Administrator
 *
 */
public class TransferInfo {
	
	
	private int id  ;// id
	private EmployeeInfoEntity	emp ;// 员工外键
	private String jdep  ;  // 旧部门
	private String jformer  ;// 旧职位
	private PositionInfoEntity former   ;// 新职位
	private Date expendTime  ;// 时间
	private String remark  ;//备注
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public EmployeeInfoEntity getEmp() {
		return emp;
	}
	public void setEmp(EmployeeInfoEntity emp) {
		this.emp = emp;
	}
	public String getJdep() {
		return jdep;
	}
	public void setJdep(String jdep) {
		this.jdep = jdep;
	}
	
	public String getJformer() {
		return jformer;
	}
	public void setJformer(String jformer) {
		this.jformer = jformer;
	}
	public PositionInfoEntity getFormer() {
		return former;
	}
	public void setFormer(PositionInfoEntity former) {
		this.former = former;
	}
	public Date getExpendTime() {
		return expendTime;
	}
	public void setExpendTime(Date expendTime) {
		this.expendTime = expendTime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	
}
