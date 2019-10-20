package com.direct.service;

import java.util.List;

import com.direct.entity.SalaryEntity;

public interface ISalaryService {
	
	public int add(int empId);
	
	public SalaryEntity addsel(int empId);
	
	public int addId(int id);
	
	public int up(SalaryEntity se);
	
	public List<SalaryEntity> selempId(int id);
	
	public SalaryEntity selid(int id);
	
	public List<SalaryEntity> selAll(SalaryEntity sa);
}
