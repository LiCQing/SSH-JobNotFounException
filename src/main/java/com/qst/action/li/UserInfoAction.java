package com.qst.action.li;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.entity.TbUser;
import com.qst.service.li.CompanyService;
import com.qst.service.zzh.UserUpdateService;
import com.qst.util.FtpUtil;
@Controller
public class UserInfoAction extends BaseAction{
	private boolean result;
	
	private String headUrl;
	
	private File file;
	private String fileFileName;
	
	@Autowired
	private UserUpdateService userService;
	@Autowired
	private CompanyService companyService;
	
	public String uploadUserHeader(){
		System.out.println(fileFileName);
		try {
			String randName = UUID.randomUUID().toString();
			String newName = randName + fileFileName;
			result = FtpUtil.uploadFileToServer("image/header/", newName, new FileInputStream(file));
			String url = "image/header/" + newName;
			String imgServerUrl = (String)ServletActionContext.getServletContext().getAttribute("imageServer");
			/*//获取用户
			TbUser user = new TbUser(1);*/
			if(userType == 1){
				TbUser user = (TbUser) currentUser;
				user.setHead(url);
				System.out.println("------>" + url);
				userService.updateUser(user);
			}else{
				TbCompany company = (TbCompany) currentUser;
				company.setHead(url);
				System.out.println("------>" + url);
				companyService.updateHead(company);
			}
			
			
			headUrl = imgServerUrl + url;
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getHeadUrl() {
		return headUrl;
	}

	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}
	
	
 
}
