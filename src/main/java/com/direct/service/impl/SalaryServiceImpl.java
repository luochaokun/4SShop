package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ISalaryDao;
import com.direct.entity.SalaryEntity;
import com.direct.service.ISalaryService;


@Service("SAService")
public class SalaryServiceImpl implements ISalaryService {
	
	@Autowired
    private ISalaryDao idao;
	
	@Override
	public int add(int empId) {
		// TODO Auto-generated method stub
		return idao.add(empId);
	}

	@Override
	public int up(SalaryEntity se) {
		// TODO Auto-generated method stub
		return idao.up(se);
	}

	@Override
	public List<SalaryEntity> selempId(int id) {
		// TODO Auto-generated method stub
		return idao.selempId(id);
	}

	@Override
	public List<SalaryEntity> selAll(SalaryEntity sa) {
		// TODO Auto-generated method stub
		return idao.selAll(sa);
	}


	@Override
	public int addId(int id) {
		// TODO Auto-generated method stub
		return idao.addId(id);
	}

	@Override
	public SalaryEntity selid(int id) {
		// TODO Auto-generated method stub
		return idao.selid(id);
	}

	@Override
	public SalaryEntity addsel(int empId) {
		// TODO Auto-generated method stub
		return idao.addsel(empId);
	}

}
