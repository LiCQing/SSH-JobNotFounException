package com.qst.action.hmx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbApply;
import com.qst.entity.TbPosition;
import com.qst.service.hmx.CompanyMAppListService;

@Controller
public class CompanyMAppListAction extends BaseAction{
	@Autowired
	CompanyMAppListService companyMAppListService;
	//界面传过来的公司id
	int cid;
	//公司申请表 
	 List<TbApply> cApplies;
	 //标记是同意还是拒绝
	private String tag;
	 //申请id
	 int id;
	 //保存发生拒绝消息
	 private String msg;
	 /**
	  * 查询申请的列表
	  * @return
	  */
	public String companyMAppList(){
	 cApplies = companyMAppListService.findComPanyMAppList(cid);

	 if(cApplies.size()>0)
		 {
	 
			 return "success";
	 
		}
	 return "success";
	}
	/**
	 * 修改申请
	 * @return
	 */
	
	public String updatecompanyMApp(){
		System.out.println("进入修改申请状态"+tag);
		System.out.println("修改id为------"+id);
		  TbApply tbApply = companyMAppListService.findById(id);
		  cApplies = companyMAppListService.findComPanyMAppList(tbApply.getTbPosition().getCId());
		   tbApply.setStatus(Integer.parseInt(tag));
		   tbApply.setMsg(msg);
		   companyMAppListService.updatecompanyMApp(tbApply);
		   
		 return "success";
		
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public List<TbApply> getcApplies() {
		return cApplies;
	}
	public void setcApplies(List<TbApply> cApplies) {
		this.cApplies = cApplies;
	}

	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}


}
