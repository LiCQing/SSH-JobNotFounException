package com.qst.service.zzh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbPositionDao;
import com.qst.entity.TbPosition;

@Service
public class PositionPostService {

	@Autowired
	private TbPositionDao dao;
	public boolean addPosition(TbPosition position){
		dao.addPosition(position);
		return true;
	}
	public boolean updatePosition(TbPosition position) {
		if(dao.updatePosition(position)){
			System.out.println("更改成功！");
			return true;
		}
		System.out.println("更改失败！");
		return false;
	}
}
