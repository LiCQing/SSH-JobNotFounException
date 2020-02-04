package com.qst.action.zzh;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbResumeFile;
import com.qst.service.ResumeService;
import com.qst.util.FtpUtil;

@Controller
public class UploadFileAction extends BaseAction {

	private File some;
	private String someFileName;
	@Autowired
	private ResumeService service;
	//文件上传
	public String upload(){
		String resumeName = UUID.randomUUID().toString()+someFileName;
		try {
			FileInputStream inputStream = new FileInputStream(some);
			System.out.println(inputStream);
			//上传文件到服务器
			FtpUtil.uploadFileToServer("resume/", resumeName,inputStream );
			//CopyUtil.copyFile(some, new File("d:/1.docx"));
			//保存文件名字 和上传者id到数据库
			TbResumeFile resumeFile = new TbResumeFile();
			resumeFile.setName(someFileName);
			resumeFile.setUId(1);
			resumeFile.setUrl("resume/"+resumeName);
			service.addFileResume(resumeFile);
			System.out.println(resumeFile);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public File getSome() {
		return some;
	}
	public void setSome(File some) {
		this.some = some;
	}
	public String getSomeFileName() {
		return someFileName;
	}
	public void setSomeFileName(String someFileName) {
		this.someFileName = someFileName;
	}
 
	
}
