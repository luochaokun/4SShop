package com.direct.entity;

import java.util.Date;

public class SalaryEntity {
	private int sid; //编号
	private String smonth; //月份
	private EmployeeInfoEntity emp; //员工id
	private double financial; //罚金
	private double deduction; //个人税			
	private double answer; //应发工资		
	private double reals; //实发
	private String modes; //发放方式
	private Date outTime; //发放时间
	private int state; //是否发放
	private String namea; //出纳人
	private String remark; //备注
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSmonth() {
		return smonth;
	}
	public void setSmonth(String smonth) {
		this.smonth = smonth;
	}
	public EmployeeInfoEntity getEmp() {
		return emp;
	}
	public void setEmp(EmployeeInfoEntity emp) {
		this.emp = emp;
	}
	public double getFinancial() {
		return financial;
	}
	public void setFinancial(double financial) {
		this.financial = financial;
	}
	public double getDeduction() {
		return deduction;
	}
	public void setDeduction(double deduction) {
		this.deduction = deduction;
	}
	public double getAnswer() {
		return answer;
	}
	public void setAnswer(double answer) {
		this.answer = answer;
	}
	public double getReals() {
		return reals;
	}
	public void setReals(double reals) {
		this.reals = reals;
	}
	public String getModes() {
		return modes;
	}
	public void setModes(String modes) {
		this.modes = modes;
	}
	public Date getOutTime() {
		return outTime;
	}
	public void setOutTime(Date outTime) {
		this.outTime = outTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getNamea() {
		return namea;
	}
	public void setNamea(String namea) {
		this.namea = namea;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

}
