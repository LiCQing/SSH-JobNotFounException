package com.qst.service.zwy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.dao.TbPositionDao;
import com.qst.entity.TbPosition;
import com.qst.util.PageResult;


public class PositionService {
	@Autowired
	private TbPositionDao positionDao;
	private PageResult pageresult;
	/**
	 * 获取公司的所有招聘职位
	 * @param companyId
	 * @return
	 */
	public List<TbPosition> poaitionList(int companyId){
		return positionDao.findCompanyById(companyId);
		
	}
	public boolean deleteCompany(int poaitionid){
		positionDao.deletePosition(poaitionid);
		return true;
	}
	public PageResult Companypagelist(int companyid,int page,int pagesize){
		System.out.println("分页+===================");
		System.out.println("分页"+page+"=="+pagesize);
		PageResult pageresult=new PageResult();
		pageresult.setCurrentPage(page);
	    pageresult.setTotlePage(positionDao.totalposition(pagesize,companyid));
	    pageresult.setList(positionDao.companypagelist(companyid,page, pagesize));
		return pageresult;
		
	}

}
