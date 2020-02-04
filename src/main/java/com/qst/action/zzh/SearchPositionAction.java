package com.qst.action.zzh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbPosition;
import com.qst.service.zzh.SearchPositionService;
import com.qst.util.PageResult;

import lombok.Getter;
import lombok.Setter;
@Controller
@Getter
@Setter
public class SearchPositionAction extends BaseAction {

	@Autowired
	private SearchPositionService service;
	private String name;
	private List<TbPosition> positions;
	private int page;
	private int pagesize;
	private PageResult pageResult;
	private int address;
	private int type;
	public String searchPosition(){
		if(page == 0){
			page = 1;
		}
		pagesize = 6;
		if(name == null){
			name = (String) session.get("name");
		}
	/*  if(address == 0){
			address = session.get("address")==null?address:(int)session.get("address");
		}
		if(type == 0){
			type = (int) session.get("type");
		} */
		pageResult = service.searchPosition(name,address,type,pagesize,page);
		session.put("name", name);
		System.out.println(name);
		pageResult = service.searchPosition(name,address,type,pagesize,page);
		session.put("searchPosition", pageResult);
		return SUCCESS;
	}
	public SearchPositionService getService() {
		return service;
	}
	public void setService(SearchPositionService service) {
		this.service = service;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<TbPosition> getPositions() {
		return positions;
	}
	public void setPositions(List<TbPosition> positions) {
		this.positions = positions;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public PageResult getPageResult() {
		return pageResult;
	}
	public void setPageResult(PageResult pageResult) {
		this.pageResult = pageResult;
	}
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
}
