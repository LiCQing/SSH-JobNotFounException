package com.qst.action.hmx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbApply;
import com.qst.service.PersonApplistService;

@Controller
public class PersonApplistAction extends BaseAction{
	@Autowired
	private PersonApplistService personApplistService;
	//页面获取的用户Id
	int UId;
	//页面获取的申请id
	int id;
	List<TbApply> tbApplies ;
	public String personappList(){
		System.out.println("进入个人申请职位列表");
		tbApplies = personApplistService.findPersonAppList(1);
		session.put("tbApplies",tbApplies);
		return "success";
		
	}
	public String update(){
		System.out.println("取消申请");
	   TbApply tbApply = personApplistService.findById(id);
	   tbApply.setStatus(-1);
	   personApplistService.updateTbApply(tbApply);
	   
		return "success";
		
	}
	
	public int getUId() {
		return UId;
	}
	public void setUId(int uId) {
		UId = uId;
	}
	public List<TbApply> getTbApplies() {
		return tbApplies;
	}
	public void setTbApplies(List<TbApply> tbApplies) {
		this.tbApplies = tbApplies;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
