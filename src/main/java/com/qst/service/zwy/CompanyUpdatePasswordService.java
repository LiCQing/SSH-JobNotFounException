package com.qst.service.zwy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbCompanyDao;
import com.qst.entity.TbCompany;
@Service
public class CompanyUpdatePasswordService {
	@Autowired
	private TbCompanyDao dao;
	public boolean updateCompany(TbCompany company){
		if(dao.updateCompany(company)){
			return true;
		}
		System.out.println("更新失败！");
		return false;
	}
	
	

}
