package com.qst.action.zzh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbResumeFile;
import com.qst.entity.TbUser;
import com.qst.service.ResumeService;

import lombok.Getter;
import lombok.Setter;
@Controller
@Getter
@Setter
public class ResumeListAction extends BaseAction {

	@Autowired
	private ResumeService service;
	private int userId;
	private List<TbResumeFile> list;
	
	public String resumeList(){
		TbUser user = (TbUser) currentUser;
		list = (List<TbResumeFile>) service.resumeList(user.getId());
		return SUCCESS;
	}
	

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<TbResumeFile> getList() {
		return list;
	}

	public void setList(List<TbResumeFile> list) {
		this.list = list;
	}
	
	
}
