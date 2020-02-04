package com.qst.interceptor;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.qst.dao.TbBrowshistoryDao;
import com.qst.entity.TbBrowshistory;

@Component
public class BrowseHistoryInterceptor implements Interceptor{
	
	@Autowired
	private TbBrowshistoryDao browsDao;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		//先在拦截器intercept（）方法中获取parameters对象：
		 Map paramMap = arg0.getInvocationContext().getParameters();
		 
		//然后用parameters对象获取参数(是一个字符串数组)：
		 Object names =  paramMap.get("id");
		 
		String id = names.toString(); 
		TbBrowshistory  bh = new TbBrowshistory();
		//用户id
		bh.setUId(1);
		bh.setPId(Integer.valueOf(id));
		bh.setCreateTime(new Date());
		browsDao.saveHistory(bh);
		 /*String id=names[0];
		 System.out.println(id);*/
		return arg0.invoke();
	}

}
