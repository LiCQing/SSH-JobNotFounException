package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbCollect;

/**
 * 收藏记录数据持久类
 * @author !N
 *
 */
@Repository
public class TbCollectDao extends BaseDao{

	public boolean addCollect(TbCollect collect) {
		return save(collect);
	}
	
	public boolean deleteCollect(int collectId) {
		TbCollect collect = (TbCollect) get(TbCollect.class, collectId);
		return delete(collect);
	}
	/**
	 * 根据uid获取职位收藏列表
	 * @param uid
	 * @return
	 */
	public List<TbCollect>CollectList(int uid){
		String hql = "from TbCollect where UId=?";
		List<TbCollect> list = (List<TbCollect>) findList(hql, uid);
		if(list.size()>0)
		{
			return list;
		}
		return null;
		
		
	}
	public int findcollectUidAndPid(int uid,int pid){
		String hql = "from TbCollect where UId=? and  PId=?";
		List<TbCollect> list = (List<TbCollect>) findList(hql, uid,pid);
		if(list.size()>0)
		{
			return 2;
		}
		return 0;
		
		
	}

}
