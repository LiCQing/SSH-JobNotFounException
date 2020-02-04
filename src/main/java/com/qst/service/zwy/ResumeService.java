package com.qst.service.zwy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbResumeDao;
import com.qst.entity.TbResume;
import com.qst.vo.EducationExperience;
import com.qst.vo.ProjectExperience;
import com.qst.vo.WantedPosition;
import com.qst.vo.WordExperience;


public class ResumeService {
	@Autowired
	private TbResumeDao resumeDao;
	private EducationExperience education;
	private ProjectExperience project;
	private WantedPosition wanted;
	private WordExperience  wordexpertion;
	
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
	

}
