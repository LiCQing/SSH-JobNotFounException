package com.qst.action.li;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.entity.TbPosition;
import com.qst.service.li.CompanyService;
import com.qst.service.li.PositionService;
import com.qst.util.FtpUtil;
import com.qst.vo.BusinessInfo;

@Controller
public class CompanyAction extends BaseAction{
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private PositionService pService;
	
	private boolean result;
	private String headUrl;
	
	private File file;
	private String fileFileName;
	
	private BusinessInfo bsi;
	
	private TbCompany company;
	private List<TbPosition> pList;
	private int cid;
	//共有多少个职位
	private int size;
 
	public String viewCompany(){
		company = companyService.getCompanyById(cid);
		pList = pService.getPostionByCId(0, cid);
		size = pList.size();
		return SUCCESS; 
	}
	
	public String uploadHeader(){
		System.out.println(fileFileName);
		try {
			String randName = UUID.randomUUID().toString();
			String newName = randName + fileFileName;
			result = FtpUtil.uploadFileToServer("image/header/", newName, new FileInputStream(file));
			String url = "image/header/" + newName;
			String imgServerUrl = (String)ServletActionContext.getServletContext().getAttribute("imageServer");
			//获取用户
			TbCompany company = (TbCompany)currentUser ;
			company.setHead(url);
			//userService.updateUser(user);
			companyService.updateHead(company);
			headUrl = imgServerUrl + url;
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	/*public String updateBusinessInfo(){
		System.out.println("修改工商信息");
		System.out.println(bsi);
		return SUCCESS;
	}
	*/
	

	
 
	
	public TbCompany getCompany() {
		return company;
	}

	public void setCompany(TbCompany company) {
		this.company = company;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}




	public List<TbPosition> getpList() {
		return pList;
	}




	public void setpList(List<TbPosition> pList) {
		this.pList = pList;
	}


	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public String getHeadUrl() {
		return headUrl;
	}

	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
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





	public int getSize() {
		return size;
	}




	public void setSize(int size) {
		this.size = size;
	}

	public BusinessInfo getBsi() {
		return bsi;
	}

	public void setBsi(BusinessInfo bsi) {
		this.bsi = bsi;
	}


	
}
