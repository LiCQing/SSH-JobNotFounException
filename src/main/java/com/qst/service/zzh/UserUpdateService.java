package com.qst.service.zzh;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbUserDao;
import com.qst.entity.TbUser;
import com.qst.util.BeanCopyUtil;
@Service
public class UserUpdateService {

	@Autowired
	private TbUserDao dao;
	public boolean updateUser(TbUser user){
		
		/*TbUser cUser = dao.getUserById(user.getId());
		//BeanUtils.copyProperties(user, user2);
		BeanCopyUtil.copyPropertiesIgnoreNull(cUser, target);*/
		if(dao.updateUser(user)){
			return true;
		}
		System.out.println("更新失败！");
		return false;
	}
}
