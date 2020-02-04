package com.qst.action.li;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbResume;
import com.qst.entity.TbUser;
import com.qst.service.ResumeService;
import com.qst.service.li.ExportService;

@Controller
public class ExportAction extends BaseAction{
	
	@Autowired
	private ExportService eServcie;
	@Autowired
	private ResumeService resumeService;
	
	
	//页面传递
	private int uId;
	
	//传递回去
	private InputStream pdfStream;
	private String fileName;
	
	/**
	 * 导出简历
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public String exportResume() throws UnsupportedEncodingException{
		if(uId == 0){
			uId = ((TbUser) currentUser).getId();
		}
		TbResume resume = resumeService.findResumeByUserId(uId);
		System.out.println(resume);
		pdfStream =  eServcie.getResumeFileInput(resume);
		fileName = resume.getTbUser().getName() + System.currentTimeMillis();
		fileName = new String(URLDecoder.decode(fileName, "UTF-8").getBytes(),"iso-8859-1");
		return SUCCESS;
	}

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public InputStream getPdfStream() {
		return pdfStream;
	}

	public void setPdfStream(InputStream pdfStream) {
		this.pdfStream = pdfStream;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
