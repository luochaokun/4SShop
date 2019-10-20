package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ICustomerDao;
import com.direct.entity.CustomerInfo;
import com.direct.entity.DepartmentInfo;
import com.direct.service.ICustomerService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;
@Service("cusService")
public class CustomerService implements ICustomerService{
	
	@Autowired
	private ICustomerDao icdao;
	
	//录入客户信息
	public boolean insertCustomer(CustomerInfo customer) {
		return icdao.insertCustomer(customer);
	}
	
	//删除客户信息
	public boolean deleteCustomer(int cid) {
		return icdao.deleteCustomer(cid);
	}
	
	//修改客户信息
	public boolean updateCustomer(CustomerInfo customer) {
		return icdao.updateCustomer(customer);
	}
	
	//查询顾客信息
	public String queryCustomer(int curr,int size,CustomerInfo customer) {
		//调用分页插件
		Page p=PageHelper.startPage(curr, size, true);
		//调用数据访问层方法查询数据
		List<CustomerInfo> dlist=icdao.queryCustomer(customer);
		int count=(int) p.getTotal();
		//转为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(dlist);
		jsonStr="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonStr+"}";
		//返回json数据
		return jsonStr;
	}
	
	//通过ID查询顾客信息
	public CustomerInfo queryCustomerById(int cid) {
		return icdao.queryCustomerById(cid);
	}
	
	//判断号码是否已被注册
	public int isExist(String phone) {
		return icdao.isExist(phone);
	}
	//登录
	public int login(CustomerInfo customer) {
		// TODO Auto-generated method stub
		return icdao.login(customer);
	}

	@Override
	public List<CustomerInfo> selectById() {
		// TODO Auto-generated method stub
		return icdao.selectById();
	}


	
}
