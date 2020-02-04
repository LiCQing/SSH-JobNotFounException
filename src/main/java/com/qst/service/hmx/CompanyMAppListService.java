package com.qst.service.hmx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbApplyDao;
import com.qst.entity.TbApply;

@Service
public class CompanyMAppListService {
	@Autowired
	private TbApplyDao tbApplyDao;
	
	/**
	 * 根据公司id查找申请记录
	 * @param cid
	 * @return
	 */
	public List<TbApply> findComPanyMAppList(int cid){
		List<TbApply> companyappList = (List<TbApply>) tbApplyDao.findComPanyMAppList(cid);
	
			return companyappList;
	}
	/**
	 * 公司修改申请状态
	 * @param tbApply
	 */
	public void updatecompanyMApp(TbApply tbApply){
		tbApplyDao.update(tbApply);
	}

	/**
	 * 根据id获取申请
	 * @param id
	 * @return
	 */
	public TbApply findById(int id){
		return tbApplyDao.getApplyById(id);
	}
	
}
