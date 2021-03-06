package com.qst.entity;
// Generated 2019-8-10 14:53:51 by Hibernate Tools 5.1.10.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TbChatHistory generated by hbm2java
 */
@Entity
@Table(name = "tb_chat_history")
public class TbChatHistory implements java.io.Serializable {

	private int id;
	private Integer sendId;
	private Integer receiveId;
	private String msg;
	private Integer status;
	private Date createTime;
	private Date readTime;

	public TbChatHistory() {
	}

	public TbChatHistory(int id) {
		this.id = id;
	}

	public TbChatHistory(int id, Integer sendId, Integer receiveId, String msg, Integer status, Date createTime,
			Date readTime) {
		this.id = id;
		this.sendId = sendId;
		this.receiveId = receiveId;
		this.msg = msg;
		this.status = status;
		this.createTime = createTime;
		this.readTime = readTime;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "send_id")
	public Integer getSendId() {
		return this.sendId;
	}

	public void setSendId(Integer sendId) {
		this.sendId = sendId;
	}

	@Column(name = "receive_id")
	public Integer getReceiveId() {
		return this.receiveId;
	}

	public void setReceiveId(Integer receiveId) {
		this.receiveId = receiveId;
	}

	@Column(name = "msg")
	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", length = 19)
	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "read_time", length = 19)
	public Date getReadTime() {
		return this.readTime;
	}

	public void setReadTime(Date readTime) {
		this.readTime = readTime;
	}

}
