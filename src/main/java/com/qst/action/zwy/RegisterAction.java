package com.qst.action.zwy;

import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbCompany;
import com.qst.entity.TbUser;
import com.qst.service.li.CompanyService;
import com.qst.service.zwy.UserService;
import com.qst.util.PhoneVerify;
import com.qst.util.VerifyCode;

import lombok.Getter;
import lombok.Setter;

@Controller
@Getter
@Setter
public class RegisterAction extends BaseAction{
	@Autowired
	private UserService userservice;
	@Autowired
	private CompanyService companyservice;
	private TbUser user;
	private TbCompany company;
	private String phone;
	private String pwd;
	private boolean result;
	private String verify;
	private int type;
	private InputStream codeInput;

	/**
	 * 用户注册
	 * @return
	 */
	public String register(){
		System.out.println("进入注册action");
		System.out.println("注册类型==="+type+"手机号"+phone+"pwd==="+pwd);
		
		if(type==0){
			TbUser user=new TbUser();
			user.setPhone(phone);
			user.setPwd(pwd);
			userservice.register(user);
			return"success";
		}else  if(type==1){
			TbCompany company=new TbCompany();
			company.setAccount(phone);
			company.setPwd(pwd);
			companyservice.addCompany(company);
			return "success";
		}
		return "success";
	}

	/**
	 * 校验手机号是否注册
	 * @return true 可用
	 */
	public String checkphone(){
		System.out.println("开始检测手机号");
		result=!userservice.checkPhone(phone);
		System.out.println(result);
		return "success";
	}
	/**
	 * 获取手机验证码
	 * @return
	 */
	public String getCode(){
		System.out.println("获取手机验证码");
		System.out.println(phone);
		PhoneVerify phoneverify=new PhoneVerify();
		String phonecode = phoneverify.getCode();
		session.put("phonecode", phonecode);
		System.out.println("这是我们的验证码："+phonecode);
		if(phoneverify.sendMsg(phone,phonecode)){
			 return "success";
		 }
		return "success";
		
	}
	/**
	 * 验证手机验证码
	 * @return
	 */
	public String CheckCode(){
		try{
			System.out.println("验证验证码");
			System.out.println(verify);
			String phonecode = (String)session.get("phonecode");
			System.out.println("校验验证码 -->" + verify +" 这是code的验证码:" + phonecode );
			result=phonecode.equals(verify);
			System.out.println("验证码结果："+result);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "success";
	}
	
	

	/**
	 * 获取验证码
	 * @return
	 */
	public String getverifyCode(){
		System.out.println("获取验证码");
		VerifyCode verifyCode = new VerifyCode();
		session.put("code", verifyCode.getText());
		codeInput = verifyCode.getInputStream();
		return "success";
	}
	/**
	 * 校验验证码
	 * @return
	 */
	public String checkCode(){
		System.out.println("验证验证码");
		System.out.println(verify);
		String code = (String)session.get("code");
		System.out.println("校验验证码 -->" + verify +" true:" + code );
		result = code.toUpperCase().equals(verify.toUpperCase());
		return "success";
	}

	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public TbUser getUser() {
		return user;
	}

	public void setUser(TbUser user) {
		this.user = user;
	}

	public TbCompany getCompany() {
		return company;
	}

	public void setCompany(TbCompany company) {
		this.company = company;
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

	public String getVerify() {
		return verify;
	}

	public void setVerify(String verify) {
		this.verify = verify;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public InputStream getCodeInput() {
		return codeInput;
	}

	public void setCodeInput(InputStream codeInput) {
		this.codeInput = codeInput;
	}
	
	
}
