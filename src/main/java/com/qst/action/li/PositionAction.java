package com.qst.action.li;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbApply;
import com.qst.entity.TbCollect;
import com.qst.entity.TbCompany;
import com.qst.entity.TbPosition;
import com.qst.entity.TbUser;
import com.qst.service.li.ApplyService;
import com.qst.service.li.CollectService;
import com.qst.service.li.PositionService;
import com.qst.service.ResumeService;
import com.qst.util.BeanCopyUtil;
import com.qst.util.PageResult;

@Controller
public class PositionAction extends BaseAction {
	private int page;
	private int row;
	private PageResult pageResult;
	private TbPosition position;
	private boolean result;

	private int id;
	private int rid;
	
	@Autowired
	PositionService positionService;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private CollectService collectService;
	@Autowired
	private ResumeService resumeservice;

	/**
	 * 添加职位
	 * @return
	 */
	public String addPosition(){
		TbCompany cCompany = (TbCompany)currentUser;
		position.setCId(cCompany.getId());
	//	position.setCId(CId);
		
		System.out.println(cCompany.getId());
		
		
		System.out.println("添加职位------"+position);
		TbCompany company=(TbCompany)currentUser;
		position.setCId(company.getId());
		System.out.println("公司id："+company.getId());
		positionService.addPosition(position);
		return SUCCESS;
	}
	/**
	 * 修改职位
	 * @return
	 */
	public String updatePosition(){
		if(positionService.updatePosition(position)){
		return SUCCESS;
		}else {
			return ERROR;
		}
	}
	
	public String allPosition() {
		System.out.println("获取职位列表--" + page + "  row " + row);
		page = page == 0 ? 1 : page;
		row = row == 0 ? 8 : row;
		// 0是用户id
		pageResult = positionService.getPagePosition(0, page, row);
		System.out.println(pageResult);
		return SUCCESS;
	}

	public String viewPosition() {
		System.out.println("查看职位详情--" + id);
		// 0是用户id
		TbUser user=(TbUser)currentUser;
		if(user == null){
			user = new TbUser(-1);
		}
		request.put("position", positionService.getPostionById(user.getId(), id));
		request.put("list",resumeservice.resumeList(user.getId()));
		
		
		return SUCCESS;
	}

	public String applyPosition() {
		System.out.println("申请职位 ---》" + id);
		System.out.println("简历id："+rid);
		TbUser user=(TbUser)currentUser;
		System.out.println("用户id："+user.getId());
		// 获取用户
		// 添加申请记录
		TbApply apply = new TbApply();
		apply.setUId(user.getId());
		apply.setPId(id);
		apply.setRId(rid);
		apply.setCreateTime(new Date());
		result = applyService.addApply(apply);
		return SUCCESS;
	}
	
	public String toUpdate(){
		System.out.println("获取修改信息-》" + id);
		//获取用户id
		position = positionService.getPostionById(1, id);
		return SUCCESS;
	}

	public String collectPosition() {
		System.out.println("收藏職位--》" + id);
		// 获取用户
		// 添加收藏记录
		TbCollect collect = new TbCollect();
		TbUser user = (TbUser) currentUser;
		collect.setPId(id);
		collect.setUId(user.getId());
		collect.setCreateTime(new Date());
		result = collectService.addCollect(collect);
		return SUCCESS;
	}
	
	
	public String cancelCollectPosition() {
		System.out.println("取消收藏職位--》" + id);
		// 获取用户
		// 添加收藏记录
		result = collectService.deleteCollect(id);
		return SUCCESS;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRow() {
		return row;
	}

	public void setRow(int row) {
		this.row = row;
	}

	public PageResult getPageResult() {
		return pageResult;
	}

	public void setPageResult(PageResult pageResult) {
		this.pageResult = pageResult;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}
	public TbPosition getPosition() {
		return position;
	}
	public void setPosition(TbPosition position) {
		this.position = position;
	}

}
