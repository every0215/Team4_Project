package com.web.store.customerService.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.gson.annotations.Expose;
/**
 * DTO类，用来存放聊天的消息
 * @author BoBo
 *
 */
public class Message {

	//发送者
	@Expose
	public String from;
	//发送者名称
	@Expose
	public String fromName;
	//接收者
	@Expose
	public String to;
	//发送的文本
	@Expose
	public String text;
	//发送日期
	@Expose
	public Date date;
	
	//在线用户列表
	@Expose
	List<Customer> userList = new ArrayList<>();
		
	
	
	public Message(String from, String fromName, String to, String text) {
		super();
		this.from = from;
		this.fromName = fromName;
		this.to = to;
		this.text = text;
		this.date = new Date();
	}
	
	public Message() {
	}
	
	public List<Customer> getUserList() {
		return userList;
	}
	public void setUserList(List<Customer> userList) {
		this.userList = userList;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getFromName() {
		return fromName;
	}
	public void setFromName(String fromName) {
		this.fromName = fromName;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
