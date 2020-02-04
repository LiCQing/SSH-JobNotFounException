package com.qst.service.hmx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbApplyDao;
import com.qst.entity.TbApply;

public class PersonApplistService {
	@Autowired
	private TbApplyDao tbApplyDao;
	/**
	 * 查找个人申请的列表
	 * @param u_id
	 * @return
	 */
	public List<TbApply> findPersonAppList(int u_id){
		List<TbApply> tbApplies = tbApplyDao.findpersAppList(u_id);
		return tbApplies;
	}
	/**
	 * 修改个人申请
	 * @param tbApply
	 */
	public void updateTbApply(TbApply tbApply){
		tbApplyDao.updateTbApply(tbApply);
		
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
