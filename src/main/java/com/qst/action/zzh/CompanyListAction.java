package com.qst.action.zzh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.service.zzh.CompanyListService;

import lombok.Getter;
import lombok.Setter;
@Controller
@Getter
@Setter
public class CompanyListAction extends BaseAction {

	@Autowired
	private CompanyListService service;
	private int id;
	private TbCompany company;
	
	public String showCompany(){
		//默认id3
		TbCompany cC = (TbCompany)currentUser;
		company = service.showCompany(cC.getId());
		return SUCCESS;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public TbCompany getCompany() {
		return company;
	}

	public void setCompany(TbCompany company) {
		this.company = company;
	}
}
