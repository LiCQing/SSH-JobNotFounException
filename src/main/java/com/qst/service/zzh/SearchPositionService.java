package com.qst.service.zzh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbPositionDao;
import com.qst.entity.TbPosition;
import com.qst.util.PageResult;

@Service
public class SearchPositionService {

	@Autowired
	private TbPositionDao dao;
	private PageResult pageresult;
	public PageResult searchPosition(String name,int address,int type,int pagesize,int page){
		System.out.println("分页+===================");
		System.out.println("分页"+page+"=="+pagesize);
		PageResult pageresult=new PageResult();
		pageresult.setCurrentPage(page);
		//模糊查询
		
		if(address==0&&type==0&&name!=null){
			if(dao.search(name)){
			pageresult.setTotlePage(dao.searchTotalPositionName(pagesize,name));
			pageresult.setList(dao.searchPositionListName(name,page,pagesize));
			}/*else{
				pageresult.setTotlePage(dao.searchTotalPositionCompany(pagesize,name));
				pageresult.setList(dao.searchPositionListCompany(name,page,pagesize));
			}*/
		}
		//类别查询
		if(address==0&&type!=0&&name==null){
			pageresult.setTotlePage(dao.searchTotalPositionType(pagesize,type));
			pageresult.setList(dao.searchPositionListType(type,page,pagesize));
		}
		//地点查询
		if(address!=0&&type==0&&name==null){
			pageresult.setTotlePage(dao.searchTotalPositionAddress(pagesize,address));
			pageresult.setList(dao.searchPositionListAddress(address,page,pagesize));			
		}
		//地点+模糊
		if(address!=0&&type==0&&name!=null){
			pageresult.setTotlePage(dao.searchTotalPositionAN(pagesize,address,name));
			pageresult.setList(dao.searchPositionListAN(address,page,pagesize,name));
		}
		//地点+类别
		if(address!=0&&type!=0&&name==null){
			pageresult.setTotlePage(dao.searchTotalPositionAT(pagesize,address,type));
			pageresult.setList(dao.searchPositionListAT(address,page,pagesize,type));
		}
		//类别+模糊
		if(address==0&&type!=0&&name!=null){
			pageresult.setTotlePage(dao.searchTotalPositionTN(pagesize,name,type));
			pageresult.setList(dao.searchPositionListTN(name,page,pagesize,type));
		}
		//地址+类别+模糊
		if(address!=0&&type!=0&&name!=null){
		pageresult.setTotlePage(dao.searchTotalPosition(pagesize,name,address,type));
	    pageresult.setList(dao.searchPositionList(name,address,type,page,pagesize));
		}
		//按照公司查找
		
		return pageresult;
	}
}
