
package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbApply;

@Repository
public class TbApplyDao extends BaseDao{
	
	/**
	 * 添加一条申请记录
	 * @param apply
	 * @return
	 */
	public boolean addApply(TbApply apply) {
		return save(apply);
	}
	
	/**
	 * 根据用户id查找申请的列表
	 * @param u_id
	 * @return
	 */
	public List<TbApply> findpersAppList(int u_id){
		String hql = "from TbApply where UId=? order by status desc";
				
			 List<TbApply> tbApplies  = (List<TbApply>) findList(hql,u_id);
			if(tbApplies.size()>0)	
			{
				return tbApplies;
			}
			else{
				return null;
			}
	}
	
	public int findbyUidAndPid(int uId,int PId){
		String hql = "from TbApply where UId=? and PId = ?";
				
			 List<TbApply> tbApplies  = (List<TbApply>) findList(hql,uId,PId);
			if(tbApplies.size()>0)	
			{
				return 2;
			}
			else{
				return 0;
			}
	}
	
	/**
	 * 根据id删除整个申请
	 * @param id
	 */
	
	public void deleteTbApply(int id) {
		TbApply tbApply=(TbApply)get(TbApply.class, id);
		  getHibernateTemplate().delete(tbApply);	
	}
	
	/**
	 * 修改申请
	 * @param tbApply
	 */
	public void updateTbApply(TbApply tbApply){
		update(tbApply);
	}
	
    /**
     * 根据id获取申请
     * @param id
     * @return
     */
	public TbApply getApplyById(int id) {
		return (TbApply)get(TbApply.class, id);
		
	}
	/**
	 * 根据公司id获取公司的申请列表
	 * @param cid
	 * @return
	 */
	public List<TbApply> findComPanyMAppList(int cid){
		String hql = "from TbApply where p_id  in (from TbPosition where c_id=?)";
		List<TbApply> findList =(List<TbApply> ) findList(hql,cid);
	
			return findList;
		
	}
	
	
}

