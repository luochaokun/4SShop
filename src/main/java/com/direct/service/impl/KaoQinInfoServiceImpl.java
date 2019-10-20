package com.direct.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.direct.dao.IKaoQinInfoDao;
import com.direct.entity.KaoQinInfoEntity;
import com.direct.service.IKaoQinInfoService;

@Service("KQService")
public class KaoQinInfoServiceImpl implements IKaoQinInfoService {
	
	@Autowired
    private IKaoQinInfoDao kqdao;
	
	public int add(KaoQinInfoEntity kq) {
		// TODO Auto-generated method stub
		return kqdao.addKq(kq);
	}

	public List<KaoQinInfoEntity> stlEmpId(int id) {
		// TODO Auto-generated method stub
		return kqdao.selkq(id);
	}

	public List<KaoQinInfoEntity> setAll(KaoQinInfoEntity kq) {
		// TODO Auto-generated method stub
		return kqdao.selkqAll(kq);
	}

	public int up(KaoQinInfoEntity kq) {
		// TODO Auto-generated method stub
		return kqdao.upKq(kq);
	}

	public KaoQinInfoEntity stlTimeId(int id) {
		// TODO Auto-generated method stub
		return kqdao.selkqId(id);
	}

	@Override
	public int upjobState(int id) {
		// TODO Auto-generated method stub
		return kqdao.upjobState(id);
	}

}
