package com.direct.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.direct.entity.ApplyInfo;
import com.direct.entity.CarInfo;
import com.direct.entity.SourceTableInfo;
import com.direct.entity.VehicleSystemEntity;
import com.direct.service.ISourceTableService;
import com.direct.service.IVehicleSystem;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/stCon")
public class SourceTableController {
	@Autowired
	@Qualifier("istService")
	public ISourceTableService istService;
	
	@Autowired
	@Qualifier("vehicle")
	private IVehicleSystem ive;
	
	//采购报表数据
	@RequestMapping(value="/showApp")
	public void queryApply(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("UTF-8");
		
		String applyList = istService.queryApply();
		String carBuyingList = istService.queryCarBuying();
		String carBuyingCountList = istService.queryCarBuyingCount();
		SourceTableInfo stInfo = new SourceTableInfo();
		stInfo.setApplyTable(applyList);
		stInfo.setCarBuyingTable(carBuyingList);
		stInfo.setCarBuyingCountTable(carBuyingCountList);
		//转为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(stInfo);
		jsonStr="{\"code\":0,\"msg\":\"\",\"data\":"+jsonStr+"}";
		System.out.println("jsonStr:"+jsonStr);
		//响应json数据回客户端
		res.getWriter().print(jsonStr);
	}
	
	//财务记录报表
	@RequestMapping(value="/showCaiWu")
	public void showCaiWu(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("UTF-8");
		
		String expenditureList = istService.queryExpenditure();
		String salaryList = istService.querySalary();
		String saleList = istService.querySale();
		String carBuyingList = istService.queryCarBuying();
		SourceTableInfo stInfo = new SourceTableInfo();
		stInfo.setCarBuyingTable(carBuyingList);
		stInfo.setExpenditureTable(expenditureList);
		stInfo.setSalaryTable(salaryList);
		stInfo.setSaleTable(saleList);
		//转为json字符串
		Gson g=new Gson();
		String jsonStr = g.toJson(stInfo);
		jsonStr="{\"code\":0,\"msg\":\"\",\"data\":"+jsonStr+"}";
		System.out.println("jsonStr:"+jsonStr);
		//响应json数据回客户端
		res.getWriter().print(jsonStr);
	}
	
	//库存报表数据
	@RequestMapping(value="/showCar")
	public void showCar(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setCharacterEncoding("UTF-8");
		
		String warehouseReceiptList = istService.queryWarehouseReceipt();
		String outBoundOrderList = istService.queryOutBoundOrder();
		SourceTableInfo stInfo = new SourceTableInfo();
		stInfo.setWarehousereceipt(warehouseReceiptList);
		stInfo.setOutboundorder(outBoundOrderList);
		
		List<VehicleSystemEntity> list = ive.select();
		req.setAttribute("system", list);
		
		
		//转为json字符串
		Gson g = new GsonBuilder().disableHtmlEscaping().create();
		String jsonStr = g.toJson(stInfo);
		jsonStr="{\"code\":0,\"msg\":\"\",\"data\":"+jsonStr+"}";
		System.out.println("jsonStr:"+jsonStr);
		//响应json数据回客户端
		res.getWriter().print(jsonStr);
	}
	
	
}
