package com.qst.service.hmx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbCompanyDao;
import com.qst.dao.TbPositionDao;
import com.qst.entity.TbCompany;
import com.qst.entity.TbPosition;

@Service
public class HotJobListService {
	@Autowired
	TbPositionDao dao;
	@Autowired
	TbCompanyDao companyDao;
	/**
	 * 查询最新的6条职位
	 * @return
	 */
	public List<TbPosition> hotjobList(){
		List<TbPosition> hotjList = dao.hotjobList();
		if(hotjList.size()>0)
		{
			return hotjList;
		}
		else
		{
			return null;
		}
	}
	/**
	 * 查询最新的6家公司
	 * @return
	 */
	public List<TbCompany> hotComList(){
		List<TbCompany> hotcList = companyDao.hotComList();
		if(hotcList.size()>0)
		{
			return hotcList;
		}
		else
		{
			return null;
		}
	}
}
