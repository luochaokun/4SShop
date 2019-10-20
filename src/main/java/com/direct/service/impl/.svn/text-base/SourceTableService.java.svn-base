package com.direct.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.ISourceTableDao;
import com.direct.entity.ApplyInfo;
import com.direct.entity.CarBuying;
import com.direct.entity.CarInfo;
import com.direct.entity.CustomerInfo;
import com.direct.entity.VehicleTypeEntity;
import com.direct.service.ISourceTableService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;
@Service("istService")
public class SourceTableService implements ISourceTableService{
	
	@Autowired
	private ISourceTableDao istDao;
	
	@Override
	public String queryApply() {
		String jsonStr = " ",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.queryApply(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
		
		return jsonStr;
	}

	@Override
	public String queryCarBuying() {
		String jsonStr = "",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.queryCarBuying(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1) ;
		
		return jsonStr;
	}

	@Override
	public String queryCarBuyingCount() {
		String jsonStr = "",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.queryCarBuyingCount(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1) ;
		System.out.println(jsonStr);
		return jsonStr;
	}

//	@Override
//	public String queryVehicleType() {
//		String jsonStr = "";
//		
//		List sum = istDao.queryVehicleType();
//    
//		for(Object su :sum){
//			System.out.println(su);
//			jsonStr += su +",";
//		}
//		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
//		
////		for(HashMap<String, List<Object>> hm : sum){
////			for (Entry<String, List<Object>> in: hm.entrySet()){
////	            System.out.println("key===  "+in.getKey()+"     values=  "+in.getValue());
////	            jsonStr += in.getKey() + ":" + in.getValue()+" ";
////	            
////	        }
////			jsonStr = jsonStr.substring(0,jsonStr.length()-1);
////			jsonStr += "},{";
////		}
////		jsonStr = jsonStr.substring(0,jsonStr.length()-1) +"}";
//		return jsonStr;
//	}


	@Override
	public String queryExpenditure() {
		String jsonStr = " ",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.queryExpenditure(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
		
		return jsonStr;
	}

	@Override
	public String querySalary() {
		String jsonStr = " ",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.querySalary(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
		
		return jsonStr;
	}

	@Override
	public String querySale() {
		String jsonStr = " ",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.querySale(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
		
		return jsonStr;
	}

	@Override
	public String queryWarehouseReceipt() {
		String jsonStr = " ",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.queryWarehouseReceipt(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
		
		return jsonStr;
	}

	@Override
	public String queryOutBoundOrder() {
		String jsonStr = " ",val="";
		for(int i=1;i<=12;i++){
			HashMap sum=istDao.queryOutBoundOrder(i);
			
			if (null != sum && sum.size() > 0) {
				Iterator ite = sum.keySet().iterator();
		        while(ite.hasNext()){ 
			        String   key   =   (String)ite.next();   
			        val =  sum.get(key).toString()+",";
		        }
			}else{
				val = "0,";
			}
			jsonStr += val;
		}
		jsonStr = jsonStr.substring(0,jsonStr.length()-1);
		
		return jsonStr;
	}

	@Override
	public HashMap queryCarBySid(int sid) {
		HashMap sum = istDao.queryCarBySid(sid);
		Iterator ite = sum.keySet().iterator();
        while(ite.hasNext()){ 
	        String   key   =   (String)ite.next();   
	        System.out.println(key+":"+sum.get(key).toString());
        }
		return sum;
	}

}
