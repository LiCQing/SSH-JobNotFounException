package com.qst.action;

import java.util.Map;

import org.apache.catalina.User;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 这个是Action的基类，也是公共类，所有Action都应该继承这个类
 * 主要获取 request 和 session
 * 以及 在 session 用户 
 * @author !N
 *
 */
public class BaseAction implements  SessionAware,RequestAware{

	public Map<String, Object> request ;
	public Map<String, Object> session ;


	

	public final static String SUCCESS ="success";
	public final static String ERROR ="error";

	

	public  Object currentUser; 
	public  int userType;   //1是用户  2 是企业
	public int cid;
	public int Uid;
	

	@Override
	public void setRequest(Map<String, Object> arg0) {
		 request = arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
	     session = arg0;
	     currentUser = session.get("User");
	     Object object = session.get("tag");
	     userType = object==null?-1:(int)object; 
	     //cid = session.get("User",user.id);
	     //Uid = session.get("User",user.id);
	}
	
}
