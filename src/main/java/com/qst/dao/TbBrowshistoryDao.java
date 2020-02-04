package com.qst.dao;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbBrowshistory;

@Repository
public class TbBrowshistoryDao extends BaseDao{
	
	public  boolean saveHistory(TbBrowshistory history){
		return save(history);
	}

}
