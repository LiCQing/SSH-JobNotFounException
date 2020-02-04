package com.qst.action.zwy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.dao.TbCompanyDao;
import com.qst.entity.TbCompany;
import com.qst.service.zwy.CompanyUpdatePasswordService;
import com.qst.util.BeanCopyUtil;

import lombok.Getter;
import lombok.Setter;

@Controller
@Getter
@Setter
public class CompanyUpdatePasswordAction extends BaseAction {
	
	@Autowired
	private CompanyUpdatePasswordService service;
	
	private String password;
	private String oldpwd;
	private boolean result;
	public String CheckOldPassword(){
		System.out.println("开始检测旧密码");
		TbCompany cCompany = (TbCompany)currentUser;
		if(cCompany.getPwd().equals(oldpwd)){
			result=true;
		}else {
			result=false;
		}
		System.out.println(result);
		return SUCCESS;
	}
	public String updateCompanyPassword(){
		System.out.println("修改密码");
		System.out.println(password);
		//获取公司，修改密码，待补充
		TbCompany cCompany = (TbCompany)currentUser;
		cCompany.setPwd(password);
		if(service.updateCompany(cCompany)){
			result=true;
		}else {
			result=false;
		}
		return SUCCESS;
	

	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOldpwd() {
		return oldpwd;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	

}
