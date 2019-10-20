package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IExpenditureDao;
import com.direct.entity.CarInfo;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.ExpenditureEntity;
import com.direct.entity.OutTypeEntity;
import com.direct.pageutil.PageModel;
import com.direct.service.IExpenditureService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;


@Service("ExpenditureService")
public class ExpenditureServiceImpl implements IExpenditureService{

	@Autowired
	private IExpenditureDao iedao;
	
	public int insertOutType(OutTypeEntity ote) {
		return iedao.insertOutType(ote);
	}

	public int deleteOutType(int id) {
		return iedao.deleteOutType(id);
	}

	public int updateOutType(OutTypeEntity ote) {
		return iedao.updateOutType(ote);
	}

	public List<OutTypeEntity> queryOutType() {
		return iedao.queryOutType();
	}

	public OutTypeEntity queryOutTypeById(int id) {
		return iedao.queryOutTypeById(id);
	}

	//----
	public int insertExpenditure(ExpenditureEntity ee) {
		return iedao.insertExpenditure(ee);
	}

	public List<ExpenditureEntity> queryExpenditure() {
		return iedao.queryExpenditure();
	}
	public PageModel<ExpenditureEntity> queryExpenditurePage(int curr,int size){
		//初始化分页的当前页数和显示条数
		Page page = PageHelper.startPage(curr, size, true);
		//得到数据集合
		List<ExpenditureEntity> ulist = iedao.queryExpenditure();
		//得到总条数
		int count = (int)page.getTotal();
		
		//封装
		PageModel<ExpenditureEntity> pu=new PageModel<ExpenditureEntity>();
		pu.setCurrentPage(curr);
		pu.setSize(size);
		pu.setSumCount(count);
		pu.setList(ulist);
		return pu;
		
		
		
	}

	public List<EmployeeInfoEntity> queryStaff() {
		return iedao.queryStaff();
	}

}
