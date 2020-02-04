package com.qst.vo;

/**
 * 期望职位，复合属性
 * @author !N
 *
 */

public class WantedPosition {
	private int positionType;
	private int salary;
	private int city;
	public int getPositionType() {
		return positionType;
	}
	public void setPositionType(int positionType) {
		this.positionType = positionType;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "WantedPosition [positionType=" + positionType + ", salary=" + salary + ", city=" + city + "]";
	}
	
	
	
}
