package com.qst.action.zzh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbUser;
import com.qst.service.zzh.UserUpdateService;
import com.qst.util.BeanCopyUtil;

@Controller
public class UserUpdateAction extends BaseAction{

	private TbUser user;
	@Autowired
	private UserUpdateService service;
	
	public String usermessageUpdate(){
	    System.out.println("进入个人信息更新");
	    TbUser cUser = (TbUser)currentUser;
	    BeanCopyUtil.copyPropertiesIgnoreNull(user, cUser);
	    
	    System.out.println(cUser);
	    service.updateUser(cUser);
		return SUCCESS;
	}
	
	public String updateUser(){
		 System.out.println("进入个人信息更新");
		    TbUser cUser = (TbUser)currentUser;
		    BeanCopyUtil.copyPropertiesIgnoreNull(user, cUser);
		    
		    System.out.println(cUser);
		    service.updateUser(cUser);

		user.setId(cUser.getId());
		if(user.getPwd1()==user.getPwd2()){
		if(service.updateUser(user)){
			return SUCCESS;
		}
		return ERROR;
		}else{
			System.out.println("两次密码不一致，请重新输入");
			return SUCCESS;
		}
	}
	
	
	public String uploadUserHeader(){
		
		
		
		return SUCCESS;
	}
	
	public TbUser getUser() {
		return user;
	}
	public void setUser(TbUser user) {
		this.user = user;
	}
}
