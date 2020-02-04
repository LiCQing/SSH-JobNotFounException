package com.qst.service.zzh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbCompanyDao;
import com.qst.entity.TbCompany;
@Service
public class CompanyUpdateService {

	@Autowired
	private TbCompanyDao dao;
	public void updateCompany(TbCompany company){
		dao.updateCompany(company);
	}
}
