package com.qst.entity;
// Generated 2019-8-5 19:53:09 by Hibernate Tools 5.1.10.Final

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TbApply generated by hbm2java
 */
@Entity
@Table(name = "tb_apply")
public class TbApply implements java.io.Serializable {

	private int id;
	private Integer PId;
	private Integer UId;
	private Integer RId;
	private Date createTime;
	private Integer status;
	private String msg;
	
	private TbPosition tbPosition;
	private TbUser tbUser;
	private TbResumeFile  rfile;
	
	public TbResumeFile getRfile() {
		return rfile;
	}

	public void setRfile(TbResumeFile rfile) {
		this.rfile = rfile;
	}

	public TbApply() {
	}

	public TbApply(int id) {
		this.id = id;
	}

	public TbApply(int id, Integer PId, Integer UId, Integer RId, Date createTime, Integer status, String msg) {
		this.id = id;
		this.PId = PId;
		this.UId = UId;
		this.RId = RId;
		this.createTime = createTime;
		this.status = status;
		this.msg = msg;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "p_id")
	public Integer getPId() {
		return this.PId;
	}

	public void setPId(Integer PId) {
		this.PId = PId;
	}

	@Column(name = "u_id")
	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	@Column(name = "r_id")
	public Integer getRId() {
		return this.RId;
	}

	public void setRId(Integer RId) {
		this.RId = RId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", length = 19)
	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "msg")
	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	

	public TbPosition getTbPosition() {
		return tbPosition;
	}

	public void setTbPosition(TbPosition tbPosition) {
		this.tbPosition = tbPosition;
	}

	

	public TbUser getTbUser() {
		return tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}

	@Override
	public String toString() {
		return "TbApply [id=" + id + ", PId=" + PId + ", UId=" + UId + ", RId=" + RId + ", createTime=" + createTime
				+ ", status=" + status + ", msg=" + msg + "]";
	}

}
