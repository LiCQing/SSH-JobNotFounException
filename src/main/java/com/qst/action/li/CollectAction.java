package com.qst.action.li;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbCollect;
import com.qst.entity.TbUser;
import com.qst.service.li.CollectService;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Controller
public class CollectAction extends BaseAction{
	@Autowired
	private CollectService collectService;
	List<TbCollect> collectlist;
	//取消收藏的id界面传进
	int id;
	public String collectlist()
	{
		System.out.println("进入收藏列表");
		TbUser user = (TbUser)currentUser;
		collectlist =  collectService.CollectList(user.getId());
		session.put("collectlist", collectlist);
		
		 return SUCCESS;
	}
   public String collectDelete()
   {
	   System.out.println("进入取消收藏");
	   collectService.collectDelete(id);
	   
	 
		 return SUCCESS;
	   
   }
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
   
}
