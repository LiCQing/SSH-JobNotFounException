package com.qst.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qst.dao.TbAdminDao;
import com.qst.dao.TbPositionDao;
import com.qst.dao.TbResumeDao;
import com.qst.dao.TbResumeFileDao;
import com.qst.dao.TbUserDao;
import com.qst.entity.TbAdmin;
import com.qst.entity.TbPosition;
import com.qst.entity.TbResume;
import com.qst.entity.TbResumeFile;
import com.qst.entity.TbUser;
import com.qst.service.li.PositionService;
import com.qst.util.ExportFileUtil;
import com.qst.util.PageResult;

public class TestDao {
	//定义变量
    ApplicationContext ac;   //读取Spring配置文件，返回上下文对象
    @Before
    public void setUp(){
       ac=new ClassPathXmlApplicationContext("applicationContext.xml");
    }
    
    @Test
    public void testAdminiDao(){
    	TbAdmin tbadmin=new  TbAdmin(1, "哈哈哈哈","123456",0);
    	TbAdminDao dao=ac.getBean(TbAdminDao.class);
    	dao.addAdmin(tbadmin);
    	
    }
    
    @Test
    public void testResumeFileDao(){
    	TbResumeFileDao resumeFileDap = ac.getBean(TbResumeFileDao.class);
    	
    	
    	TbResumeFile resumeFile = new TbResumeFile();
    	resumeFile = resumeFileDap.getResumeFileById(1);
    	/*resumeFile.setName("张三的个人简历");
    	resumeFile.setUId(1);
    	resumeFile.setUrl("resume/uuid.doc");*/
    	System.out.println(resumeFile);
    	//resumeFileDap.addResumeFile(resumeFile);
    }
    
    
    @Test
    public void testUserDao(){
    	TbUserDao td= ac.getBean(TbUserDao.class);
    	TbUser user = new TbUser();
    	user.setName("万物");
    	user.setPhone("113325");
    	//td.addUser(user);
    	//TbUser user = td.getUserById(1);
    	//System.out.println(user);
    	 user = td.getUserById(7);
    	
    }
    
    @Test
    public void TestService(){
    	PositionService bean = ac.getBean(PositionService.class);
    	PageResult result = bean.getPagePosition(1, 1, 8);
    	System.out.println(result);
    }
    
    @Test
    public void TestPositionDao(){
    	TbPositionDao positionDao = ac.getBean(TbPositionDao.class);
    	TbPosition position  ;/*= positionDao.getPositionById(2);*/
    	//System.out.println(position.getCompany());
    	position = new TbPosition();
    	position.setCId(3);   	
    	positionDao.addPosition(position);
    	}
    
    @Test
    public void TestResumeDao() throws Exception{
    	TbResumeDao rd = ac.getBean(TbResumeDao.class);
    /*	TbResume resumeById = rd.getResumeById(12);
    	System.out.println(resumeById.getTbUser());*/
    	TbResume resume = new TbResume();
    	resume.setUId(55);
    	rd.addResume(resume);
    	
    
    	//ExportFileUtil.toPdf(resumeById,"e:/a-resume/1.pdf");
    }
 
    
  
 
}
