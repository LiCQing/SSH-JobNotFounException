package com.qst.vo;

public class EducationExperience {
	private String schoolName;
	private int level; //学历 0 高中以下 1 高中 2专科 3本科 4硕士 5博士
	private String specialty; //专业
	private String startTime;
	private String endTime;
	private String schoolExperien; //校园经历
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
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
	public String getSchoolExperien() {
		return schoolExperien;
	}
	public void setSchoolExperien(String schoolExperien) {
		this.schoolExperien = schoolExperien;
	}
	@Override
	public String toString() {
		return "EducationExperience [schoolName=" + schoolName + ", level=" + level + ", specialty=" + specialty
				+ ", startTime=" + startTime + ", endTime=" + endTime + ", schoolExperien=" + schoolExperien + "]";
	}
	
	
}
