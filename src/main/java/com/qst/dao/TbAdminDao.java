package com.qst.dao;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbAdmin;

@Repository
public class TbAdminDao extends BaseDao{
	public boolean addAdmin(TbAdmin admin){
		save(admin);
		return true;
	}
}
