package com.qst.service.li;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.qst.dao.TbCompanyDao;
import com.qst.entity.TbCompany;

@Service
public class CompanyService {
	@Autowired
	private TbCompanyDao companydao;
	public boolean addCompany(TbCompany company){
		return companydao.addCompany(company);
	}
	
	public TbCompany getCompanyById(int cId){
		return companydao.getCompanyById(cId);
	}

	public void updateHead(TbCompany company) {
		// TODO Auto-generated method stub
		companydao.updateCompany(company);
	}

}
