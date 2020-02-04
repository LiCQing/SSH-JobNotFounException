package com.qst.action.hmx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.entity.TbCompany;
import com.qst.entity.TbPosition;
import com.qst.service.hmx.HotJobListService;

@Controller
public class HotJobListAction {
@Autowired 
HotJobListService hotJobListService;
List<TbPosition> hotjList;
List<TbCompany> hotcList;

public String hotJoblist(){
	System.out.println("---进入前5职位搜索");
	 hotjList = hotJobListService.hotjobList();
	 hotcList = hotJobListService.hotComList();
	if(hotjList.size()>0&&hotcList.size()>0){
		return "success";
	}
	else {
		return null;
	}
}

public List<TbPosition> getHotjList() {
	return hotjList;
}
public void setHotjList(List<TbPosition> hotjList) {
	this.hotjList = hotjList;
}
public List<TbCompany> getHotcList() {
	return hotcList;
}
public void setHotcList(List<TbCompany> hotcList) {
	this.hotcList = hotcList;
}


}
