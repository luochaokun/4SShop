package com.direct.entity;

/**
 * 应聘表
 * @author Administrator
 *
 */
public class HireInfo {
	
	private  int hid ;// 编号
	private  RecruitmentInfo rec  ;//招聘信息id
	private String name ;// 姓名
	private String phone ;// 电话
	private String email ;// 邮箱
	private String diploma ;// 学历
	private int state  ;// 是否审核
	private String remark ;// 备注
	
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public RecruitmentInfo getRec() {
		return rec;
	}
	public void setRec(RecruitmentInfo rec) {
		this.rec = rec;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiploma() {
		return diploma;
	}
	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
