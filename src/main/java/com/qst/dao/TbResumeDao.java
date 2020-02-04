package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbResume;
import com.qst.entity.TbResumeFile;
@Repository
public class TbResumeDao extends BaseDao {

	/**
	 * 添加简历信息
	 * @param resume
	 * @return
	 */
	public boolean addResume(TbResume resume){
		save(resume);
		return true;
	}
 

	public TbResume getResumeId(int id){
		return (TbResume)get(TbResume.class, id);
	}
	
	/**
	 * 编辑简历信息
	 * @param resume
	 * @return
	 */
	public boolean updateResume(TbResume resume){
		update(resume);
		return false;
		
	}
	/**
	 * 获取简历信息
	 * @param userid
	 * @return
	 */
	public TbResume findResumeByUserId(int userid){
		List<TbResume> resume=(List<TbResume>) findList("from TbResume where UId=?",userid);
		return resume.size()>0?resume.get(0):null;
	}

	/**
	 * 根据id获取简历
	 * @param resumeId
	 * @return
	 */
	public TbResume getResumeById(int resumeId){
		return (TbResume)get(TbResume.class, resumeId);
	}
	
	/**
	 * 根据用户id获取简历
	 */
	public TbResume getResumeByUserId(int userId){
		List<TbResume> list = (List<TbResume>)findList("from TbResume where u_id = ?" , userId);
		return list.size()> 0 ? list.get(0):null;
	}

 
}
