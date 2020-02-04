package com.qst.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.entity.TbCompany;
import com.qst.service.li.CompanyService;
import com.qst.util.JsonUtils;
import com.qst.vo.BusinessInfo;



@Controller
public class TestAction extends BaseAction{
	@Autowired
	private CompanyService cService;
	
	//获取工商信息
	private BusinessInfo bsi;
	
	/**
	 * 征用添加工商信息
	 * @return
	 */
	public String show(){
		System.out.println(bsi);
		TbCompany company = (TbCompany)currentUser;
		company.setBusinessInfo(JsonUtils.objectToJson(bsi));
		cService.updateHead(company);
		return "success";
	}

	public BusinessInfo getBsi() {
		return bsi;
	}

	public void setBsi(BusinessInfo bsi) {
		this.bsi = bsi;
	}
}
