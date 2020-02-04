package com.qst.vo;

public class SendMsg {
/*	'receive':recerive,
	'sender':send,
	'msg':msg*/
	
	private String receive;
	private String sender;
	private String senderName;
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	private String msg;
	public String getReceive() {
		return receive;
	}
	public void setReceive(String receive) {
		this.receive = receive;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "SendMsg [receive=" + receive + ", sender=" + sender + ", msg=" + msg + "]";
	}
	
	
}	
