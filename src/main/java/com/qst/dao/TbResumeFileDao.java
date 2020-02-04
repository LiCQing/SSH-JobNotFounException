package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbResumeFile;

/**
 * 用户文件简历记录数据库持久类
 * @author !N
 *
 */
@Repository
public class TbResumeFileDao extends BaseDao{
	
	/**
	 * 保存一个简历文件
	 * @param resumeFile
	 * @return
	 */
	public boolean addResumeFile(TbResumeFile resumeFile){
		save(resumeFile);
		return true;
	}
	
	public TbResumeFile getResumeFileById(int id){
		return (TbResumeFile) get(TbResumeFile.class,id);
	}
	
	/**
	 * 更新简历状态
	 * @param resumeFile
	 * @return
	 */
	public boolean updateResumeFile(TbResumeFile resumeFile){
		update(resumeFile);
		return true;
	}

	public List<TbResumeFile> findResumeById(int userId){
		List<TbResumeFile> list = (List<TbResumeFile>) findList("from TbResumeFile where u_id = ?",userId);
		return list;
	}

}
