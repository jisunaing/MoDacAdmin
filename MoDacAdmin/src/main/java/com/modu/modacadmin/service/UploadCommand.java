package com.modu.modacadmin.service;

import org.springframework.web.multipart.MultipartFile;

public class UploadCommand {
	private String writer;
	private String title;
	//※ input type="file"는 MultipartFile타입으로]	
	private MultipartFile upload;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	
}
