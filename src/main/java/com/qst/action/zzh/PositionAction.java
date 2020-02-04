package com.qst.action.zzh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbPosition;
import com.qst.service.zzh.PositionPostService;

public class PositionAction extends BaseAction {

	@Autowired
	private PositionPostService service;
	private TbPosition position;
	private Integer cid;
	
	
	
	public TbPosition getPosition() {
		return position;
	}
	public void setPosition(TbPosition position) {
		this.position = position;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	
}
