package com.qst.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbResumeDao;
import com.qst.dao.TbResumeFileDao;
import com.qst.entity.TbResume;
import com.qst.entity.TbResumeFile;
import com.qst.vo.EducationExperience;
import com.qst.vo.ProjectExperience;
import com.qst.vo.WantedPosition;
import com.qst.vo.WordExperience;

@Service
public class ResumeService {
	@Autowired
	private TbResumeFileDao dao;
	
	@Autowired
	private TbResumeDao resumeDao;
 
	
	public TbResume findResumeByUserId(int userid){
		return resumeDao.findResumeByUserId(userid);
		
	}
	
	public boolean addResume(TbResume resume){
		resumeDao.addResume(resume);
		return true;
		
	}
	
	 public boolean updateResume(TbResume resume){
		 resumeDao.update(resume);
		 return true;
	 }
	

	
	/**
	 * zzh 
	 * @param resumeFile
	 * @return
	 */
	public boolean saveResume(TbResumeFile resumeFile){
		dao.save(resumeFile);
		return true;
	}
	
	public List<TbResumeFile> resumeList(int userId){
		List<TbResumeFile> list = dao.findResumeById(userId);
		return list;
	}
	
	/**
	 * 保存一个文件简历
	 * @param resumeFile
	 */
	public void addFileResume(TbResumeFile resumeFile) {
		dao.save(resumeFile);
	}
}
