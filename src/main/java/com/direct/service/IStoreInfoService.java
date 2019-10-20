package com.direct.service;

import java.util.List;

import com.direct.entity.StoreInfoEntity;

public interface IStoreInfoService {
	public boolean insertStore(StoreInfoEntity store);
	public boolean deleteStore(int cid);
	public boolean updateStoreIn(StoreInfoEntity store);
	public List<StoreInfoEntity> queryStore();
	public StoreInfoEntity queryStorerById(int cid);
	public int allCount();
	public String queryStore1(int curr,int size,StoreInfoEntity store);
}
