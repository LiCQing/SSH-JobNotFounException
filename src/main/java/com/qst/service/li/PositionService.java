package com.qst.service.li;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbApplyDao;
import com.qst.dao.TbCollectDao;
import com.qst.dao.TbPositionDao;
import com.qst.entity.TbPosition;
import com.qst.util.PageResult;

@Service
public class PositionService {
	@Autowired
	private TbPositionDao positionDao;
	
	@Autowired
	private TbApplyDao aDao;
	@Autowired
	private TbCollectDao cDao;
	
	/**
	 * 获取一页封装数据
	 * @param userId
	 * @param page
	 * @param row
	 * @return
	 */
	public PageResult getPagePosition(int userId,int page,int row){
		List<TbPosition> pagePosition = positionDao.getPagePosition( page, row);
		PageResult result = new PageResult();
		result.setList(pagePosition);
		result.setCurrentPage(page);
		int total = positionDao.getAllTotalPage(row);
		result.setTotlePage(total);
		result.setHasNext(page < total);
		return result;
	}

	public TbPosition getPostionById(int userId, int positionId) {
		TbPosition position = positionDao.getPositionById(positionId);
		position.setUserStatus(aDao.findbyUidAndPid(userId, positionId));
		position.setCollectStatus(cDao.findcollectUidAndPid(userId, positionId));
		return position;
	}
	
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
	
	public boolean addPosition(TbPosition position){
		position.setCreateTime(new Date());
		positionDao.addPosition(position);
		return true;
	}
	
	
	public boolean updatePosition(TbPosition position) {
		if(positionDao.updatePosition(position)){
			System.out.println("更改成功！");
			return true;
		}
		System.out.println("更改失败！");
		return false;
	}

	public List<TbPosition> getPostionByCId(int i, int cid) {
		return positionDao.findCompanyById(cid);
	}

}
