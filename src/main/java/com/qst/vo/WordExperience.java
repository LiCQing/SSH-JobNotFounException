package com.qst.vo;

/**
 * 复合属性，工作经验
 * @author !N
 *
 */
public class WordExperience {
	private String companyName;  //公司名称
	private String dept;  //部门名
	private int positionType;  //职位类型代码
	private String startWorkTime; //开始工作时间
	private String endWordTime;  //结束工作时间
	private String skillTag; //技能标签
	private String workContent; //工作内容
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getPositionType() {
		return positionType;
	}
	public void setPositionType(int positionType) {
		this.positionType = positionType;
	}
	public String getStartWorkTime() {
		return startWorkTime;
	}
	public void setStartWorkTime(String startWorkTime) {
		this.startWorkTime = startWorkTime;
	}
	public String getEndWordTime() {
		return endWordTime;
	}
	public void setEndWordTime(String endWordTime) {
		this.endWordTime = endWordTime;
	}
	public String getSkillTag() {
		return skillTag;
	}
	public void setSkillTag(String skillTag) {
		this.skillTag = skillTag;
	}
	public String getWorkContent() {
		return workContent;
	}
	public void setWorkContent(String workContent) {
		this.workContent = workContent;
	}
	@Override
	public String toString() {
		return "WordExperience [companyName=" + companyName + ", dept=" + dept + ", positionType=" + positionType
				+ ", startWorkTime=" + startWorkTime + ", endWordTime=" + endWordTime + ", skillTag=" + skillTag
				+ ", workContent=" + workContent + "]";
	}
	
	
	
}
