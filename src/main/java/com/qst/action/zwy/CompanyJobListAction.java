package com.qst.action.zwy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.entity.TbPosition;
import com.qst.service.li.PositionService;
import com.qst.util.PageResult;

import lombok.Getter;
import lombok.Setter;
@Repository
@Getter
@Setter
public class CompanyJobListAction extends BaseAction{
	@Autowired
	private PositionService positionService;
	private TbCompany company;
	private TbPosition tbposition;
	private PageResult pageresult;
	private int page;
	private int pagersize;
	
	private int id;
	
	/**
	 * 获取公司的所有职位列表
	 * @return
	 */
	public String companylist(){
		System.out.println("进入公司职位列表Action");
		System.out.println("公司id:");
		if(page==0){
			page=1;
		}
		pagersize=6;
		//假定公司id=2
		int cId = ((TbCompany) currentUser).getId();
		pageresult= positionService.Companypagelist(cId, page,pagersize);
		System.out.println("page=="+page);
	    System.out.println(pageresult.getList());
		session.put("companyPosition", pageresult);
		return SUCCESS;
	}
	/**
	 * 删除职位
	 * @return
	 */
	public String companyDelete(){
		System.out.println("删除公司列表的职位");
		System.out.println("删除的职位id:");
		positionService.deleteCompany(id);
		return "companylist";
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
}
