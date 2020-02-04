package com.qst.service.zwy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbResumeDao;
import com.qst.dao.TbUserDao;
import com.qst.entity.TbResume;
import com.qst.entity.TbUser;

@Service
public class UserService {
	@Autowired
	private TbUserDao userdao;
	
	@Autowired
	private TbResumeDao resumeDao;
	
	
	/**
	 * 检查手机号是否注册过
	 * @param phone
	 * @return false可以用，true表示不可用
	 */
	public boolean checkPhone(String phone){
		System.out.println("检查手机号：");
		return userdao.checkName(phone);
	}
	
	/**
	 * 添加用户注册
	 * @param user
	 * @return
	 */
	public boolean register(TbUser user){
		TbResume resume = new TbResume();
		int uid = userdao.addUser(user);
		resume.setUId(uid);
		return 	resumeDao.addResume(resume);
	}
   
}
