package com.direct.entity;

public class VehicleSystemEntity {
	private int sid;
	private VehicleTypeEntity vsid;
	private String sname ;
	private String img;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public VehicleTypeEntity getVsid() {
		return vsid;
	}
	public void setVsid(VehicleTypeEntity vsid) {
		this.vsid = vsid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

}
