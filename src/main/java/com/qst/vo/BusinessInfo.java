package com.qst.vo;

import java.util.Date;

/**
 * 
 * 法人代表：张勇 注册资本：15298万美元 成立时间：2007-03-26
企业类型：有限责任公司（台港澳法人独资）
经营状态：存续
注册地址：杭州市西湖区西斗门路3号天堂软件园A幢10楼G座
统一信用代码：91330100799655058B
经营范围：服务:企业管理,计算机系统服务,电脑动画设计,经济信息咨询服务（除商品中介）,成年人的非证书劳动职业技能培训和成年人的非文化教育培训（涉及前置审批的项目除外）;生产:计算机软件;销售自产产品。（国家禁止和限制的除外,凡涉及许可证制度的凭证经营）
 * @author !N
 *
 */

public class BusinessInfo {
	private String person;
	private String capital;
	private String createTime;
	private String type;
	private String status;
	private String addr;
	private String creditCode;
	private String scope;
	
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getCapital() {
		return capital;
	}
	public void setCapital(String capital) {
		this.capital = capital;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getCreditCode() {
		return creditCode;
	}
	public void setCreditCode(String creditCode) {
		this.creditCode = creditCode;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	@Override
	public String toString() {
		return "BusinessInfo [person=" + person + ", capital=" + capital + ", createTime=" + createTime + ", type="
				+ type + ", addr=" + addr + ", creditCode=" + creditCode + ", scope=" + scope + "]";
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

}
