package com.qst.action.zzh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.itextpdf.text.log.SysoCounter;
import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.service.zzh.CompanyUpdateService;
import com.qst.util.BeanCopyUtil;
@Controller
public class CompanyUpdateAction extends BaseAction {

	@Autowired
	private CompanyUpdateService service;
	private TbCompany company;
	public String updateCompany(){
		
		
		TbCompany cCompany = (TbCompany)currentUser;
		company.setId(cCompany.getId());
		
		System.out.println(cCompany.getId());
		BeanCopyUtil.copyPropertiesIgnoreNull(company, cCompany);
		// System.out.println(company);
		service.updateCompany(cCompany);
	//	System.out.println(cCompany);
		return SUCCESS;
	}
	public TbCompany getCompany() {
		return company;
	}
	public void setCompany(TbCompany company) {
		this.company = company;
	}
	
}
