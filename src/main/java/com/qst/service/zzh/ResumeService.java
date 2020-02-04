package com.qst.service.zzh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbResumeFileDao;
import com.qst.entity.TbResumeFile;

 
public class ResumeService {

	@Autowired
	private TbResumeFileDao dao;
	public boolean saveResume(TbResumeFile resumeFile){
		dao.save(resumeFile);
		return true;
	}
	public List<TbResumeFile> resumeList(int userId){
		List<TbResumeFile> list = dao.findResumeById(userId);
		return list;
	}
}
