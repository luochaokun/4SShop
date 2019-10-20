package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.direct.dao.IVehicleSystemDao;
import com.direct.entity.VehicleSystemEntity;
import com.direct.service.IVehicleSystem;

@Service("vehicle")
public class IVehicleSystemImpl implements IVehicleSystem  {

	@Autowired
	public IVehicleSystemDao iv;
	
	@Override
	public List<VehicleSystemEntity> select() {
		// TODO Auto-generated method stub
		return iv.select();
	}


}
