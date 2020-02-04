package com.qst.service.zzh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbCompanyDao;
import com.qst.entity.TbCompany;
@Service
public class CompanyListService {

	@Autowired
	private TbCompanyDao dao;
	public TbCompany showCompany(int id){
		TbCompany company = dao.showCompanyById(id);
		return company;
	}
}
