package com.direct.service;

import java.util.List;

import com.direct.entity.KaoQinInfoEntity;

public interface IKaoQinInfoService {
		
		public int add(KaoQinInfoEntity kq);
		
		public int up(KaoQinInfoEntity kq);
		
		public int upjobState(int id);
		
		public List<KaoQinInfoEntity> stlEmpId(int id);
		
		public KaoQinInfoEntity stlTimeId(int id);
		
		public List<KaoQinInfoEntity> setAll(KaoQinInfoEntity kq);
}
