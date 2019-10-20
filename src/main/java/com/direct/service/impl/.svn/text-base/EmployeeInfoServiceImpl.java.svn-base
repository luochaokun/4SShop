package com.direct.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IEmployeeInfoDao;
import com.direct.entity.EmployeeInfoEntity;
import com.direct.entity.TransferInfo;
import com.direct.service.IEmployeeInfoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Service("EmpService")
public class EmployeeInfoServiceImpl implements IEmployeeInfoService {
	
	@Autowired
    private IEmployeeInfoDao iedao;
	
	//员工登陆
	public EmployeeInfoEntity login(EmployeeInfoEntity ee) {
		return iedao.login(ee);
	}

	//添加员工
	public int insertEmp(EmployeeInfoEntity emp) {
		return iedao.insertEmp(emp);
	}

	//删除员工
	public int deleteEmp(int empId) {
		return iedao.deleteEmp(empId);
	}

	//修改员工
	public int updateEmp(EmployeeInfoEntity emp) {
		return iedao.updateEmp(emp);
	}

	//查询所有员工（分页 模糊）
	public String selEmp(EmployeeInfoEntity emp, int curr,int size) {
		Page p=PageHelper.startPage(curr, size, true);
		List<EmployeeInfoEntity> elist=iedao.selEmp(emp);
		int count=(int) p.getTotal();
		Gson g=new Gson();
		String JsonEmp=g.toJson(elist);
		JsonEmp="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+JsonEmp+"}";
		return JsonEmp;
	}


	//批量离职
	public int updateLz(String ids) {
		System.out.println(ids+"\tservice的IDS值");
		String[] str=ids.split(",");
		List<Integer> idlist=new ArrayList<Integer>();
		for(String s : str){
			idlist.add(Integer.parseInt(s));
			
		}
		 int i=iedao.updateLz(idlist);
		 
		 
		return i; 
	
	}


	public List<EmployeeInfoEntity> selectEmpById() {
		// TODO Auto-generated method stub
		return iedao.selectEmpById();
	}

	
	public EmployeeInfoEntity selectTg(int ids) {
		return iedao.selectTg(ids);
	}

	
	public int updateTg(TransferInfo tra) {
		int i1=iedao.updateJub(tra);
		int i=iedao.updateTg(tra);
		return i;
	}

	
	public String selectTgjl(TransferInfo tra, int curr, int size) {
		Page page=PageHelper.startPage(curr, size);
		List<TransferInfo> tlist=iedao.selectTgjl(tra);
		int count=(int) page.getTotal();
		Gson g=new Gson();
		String jsonTra=g.toJson(tlist);
		jsonTra="{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+jsonTra+"}";
		return jsonTra;
	}


}
