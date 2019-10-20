package com.direct.dao;

import java.util.List;

import com.direct.entity.StoreInfoEntity;



public interface IStoreInfoDao {
	public boolean insertStore(StoreInfoEntity store);
	public boolean deleteStore(int cid);
	public boolean updateStoreIn(StoreInfoEntity store);
	public List<StoreInfoEntity> queryStore();
	public StoreInfoEntity queryStorerById(int cid);
	public int allCount();
	public List<StoreInfoEntity> queryStore1(StoreInfoEntity store);
}
