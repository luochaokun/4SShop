package com.direct.entity;

public class PositionInfoEntity {
	private int pid; //职位编号
	private DepartmentInfo dept; //关联部门
	private String pname; //职位名称
	private String pids; //所属权限
	private String remark; //职位描述
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public DepartmentInfo getDept() {
		return dept;
	}
	public void setDept(DepartmentInfo dept) {
		this.dept = dept;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPids() {
		return pids;
	}
	public void setPids(String pids) {
		this.pids = pids;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public PositionInfoEntity(int pid, DepartmentInfo dept, String pname,
			String pids, String remark) {
		super();
		this.pid = pid;
		this.dept = dept;
		this.pname = pname;
		this.pids = pids;
		this.remark = remark;
	}
	public PositionInfoEntity() {
		super();
	}
	
}
