package com.qst.service.li;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbCollectDao;
import com.qst.entity.TbCollect;

@Service
public class CollectService {
@Autowired
private TbCollectDao collectDao;
	
/**
 * 添加收藏记录
 * @param collect
 * @return
 */
	public boolean addCollect(TbCollect collect) {
		return collectDao.addCollect(collect);
	}

	/**
	 * 取消收藏记录
	 * @param collect
	 * @return
	 */
	public boolean deleteCollect(int collectId) {
		return collectDao.deleteCollect(collectId);
	}
/**
 * 查找收藏列表
 * @param uid
 * @return
 */
   public List<TbCollect>CollectList(int uid){
	return collectDao.CollectList(uid);
   }
   
   public void collectDelete(int id)
   {
	   TbCollect tbcollect=  (TbCollect) collectDao.get(TbCollect.class, id);
	   collectDao.delete(tbcollect);
   }
    }
