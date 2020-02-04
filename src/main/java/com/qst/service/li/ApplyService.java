package com.qst.service.li;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbApplyDao;
import com.qst.entity.TbApply;

@Service
public class ApplyService {
   @Autowired
   private TbApplyDao applyDao;
   
   public boolean addApply(TbApply apply){
	   return applyDao.addApply(apply);
   }
}
