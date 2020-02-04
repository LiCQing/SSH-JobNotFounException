package com.qst.action.hmx;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.entity.TbPosition;
import com.qst.entity.TbUser;
import com.qst.service.LoginService;
import com.qst.service.hmx.HotJobListService;
@Controller
public class LoginAction extends BaseAction{
	private String phone,pwd;
	//判断是求职者还是企业的标记
	private int  tag,tagt;
	@Autowired
	private LoginService loginService;
	
	@Autowired 
	HotJobListService hotJobListService;
	List<TbPosition> hotjList;
	List<TbCompany> hotcList;

	/**
	 * 密码登录
	 * @return
	 */
    public String login(){
    	System.out.println("phone---"+phone+"pwd---"+pwd+"tag-----"+tag);
    	Object object;
    	if(tag==1)
    	{
    		
    		object = (TbUser) loginService.findByPW(phone, pwd,tag);
    	}
    	else{
    		object = (TbCompany) loginService.findByPW(phone, pwd,tag);
    	}

	if(object!=null)
	{
		hotjList = hotJobListService.hotjobList();
		 hotcList = hotJobListService.hotComList();
		System.out.println("success");
		session.put("User", object);
		session.put("tag", tag);
		return "success";
	}
	else{
		return "null";
	}
	
}
    
    /**
     * 快速登录
     * @return
     */
    public String  logintwo(){
    	
    	System.out.println("phone---"+phone+"tag-----"+tag);
    	
    	Object object;
    	if(tag==1)
    	{
    		
    		object = (TbUser) loginService.findByP(phone,tag);
    	}
    	else{
    		object = (TbCompany) loginService.findByP(phone,tag);
    	}

	if(object!=null)
		
	{
		hotjList = hotJobListService.hotjobList();
		 hotcList = hotJobListService.hotComList();
		System.out.println("success");
		session.put("User", object);
		session.put("tag", tag);
		return "success";
	}
	else{
		return "null";
	}
	
    	
    }
    
    
    
  /*  @RequestMapping("/login.html")
    @ResponseBody
    public Object login(HttpSession session,@RequestParam String user){
    
    //后台非空验证
        if(user == null || "".equals(user)){
            return "nodata";
        }else{
        
        //user 转换成 json 对象，再转成 java 对象
            JSONObject userObject = JSONObject.fromObject(user);
            User userObj= (User)userObject.toBean(userObject, User.class);
            
            try {
                if(userService.loginCodeIsExit(userObj) == 0){//不存在这个登录账号
                    return "nologincode";
                }else{
                    User _user = userService.getLoginUser(userObj);
                    
                    //登录成功
                    if(null != _user){
                        //当前用户存到session中
                        session.setAttribute(Constants.SESSION_USER, _user);
                        
                        //更新当前用户登录的lastLoginTime
                        User updateLoginTimeUser = new User();
                        updateLoginTimeUser.setId(_user.getId());
                        updateLoginTimeUser.setLastLoginTime(new Date());
                        userService.modifyUser(updateLoginTimeUser);
                        updateLoginTimeUser = null;
                        return "success";
                    }else{
                      //密码错误
                        return "pwderror";
                    }
                }
            } catch (Exception e) {
                return "failed";
            }
        }
    }
    */
    public void getHostJClist(){
    	hotjList = hotJobListService.hotjobList();
		 hotcList = hotJobListService.hotComList();
    }
    
    public String loginout(){
    	getHostJClist();
    	session.clear();
    	return "success";
    }

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public int getTag() {
		return tag;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}

	public int getTagt() {
		return tagt;
	}

	public void setTagt(int tagt) {
		this.tagt = tagt;
	}

}
