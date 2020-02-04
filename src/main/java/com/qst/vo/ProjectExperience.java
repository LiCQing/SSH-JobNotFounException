package com.qst.vo;

public class ProjectExperience {
	private String projectName;
	private String role;
	private String startTime;
	private String endTime;
	private String result;
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "ProjectExperience [projectName=" + projectName + ", role=" + role + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", result=" + result + "]";
	}
	
	

}
