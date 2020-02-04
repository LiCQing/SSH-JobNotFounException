package com.qst.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbUserDao;
@Service
public class LoginService {
	@Autowired
	private TbUserDao tbUserDao;
 
	/**
	 * 根据电话号码和密码查找对象
	 * @param phone
	 * @param pwd
	 * @param tag
	 * @return
	 */
  public Object findByPW(String phone,String pwd,int tag){
	   Object tbUser = tbUserDao.getByPW(phone, pwd,tag);
	return tbUser;
}
  
  public Object findByP(String phone,int tag){
	   Object tbUser =  tbUserDao.getByP(phone, tag);
	   return tbUser;
  }  
}
