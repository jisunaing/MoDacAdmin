﻿package com.modu.modacadmin.service.impl;

public class PagingUtil {

	public static String pagingText(int totalRecordCount,int pageSize,int blockPage,int nowPage,String page){
		String pagingStr="";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
                
			pagingStr+="<a href='"+page+"nowPage=1'>◀◀</a>&nbsp;<a href='"+page+"nowPage="+(intTemp -blockPage)+"'>◀</a>";
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){  
				pagingStr+="<span style='Color:red'>"+intTemp+"</span>&nbsp;";
			}
		     else
		    	 pagingStr+="<a href='"+page+"nowPage="+intTemp+"'>"+intTemp+"</a>&nbsp;";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){

			pagingStr+="<a href='"+page+"nowPage="+intTemp+"'><span>▶</span></a>&nbsp;<a href='"+page+"nowPage="+totalPage+"'><span>▶▶</span></a>"; 

				   
		}
		
		return pagingStr;
	}
	public static String pagingBootStrapStyle(int totalRecordCount,int pageSize,int blockPage,int nowPage,String page){
		
//		String pagingStr="<nav class='text-center'><ul class=\"pagination\" >";
		String pagingStr="<div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
			pagingStr+="<button type=\"button\" class=\"btn btn-outline-secondary\"><a href='"+page+"nowPage=1'><span style='Color:gray'>처음\r\n</span></a></button></br/>\r\n" + 
					   "<button type=\"button\" class=\"btn btn-outline-secondary\"><a href='"+page+"nowPage="+(intTemp-blockPage)+"'><span style='Color:gray'>이전</span></a></button></br/>\r\n";
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){  
				pagingStr+="<button type=\"button\" class=\"btn btn-outline-secondary\"><a href='#'><span style='Color:red'>"+intTemp+"</a></span></button>";
			}
		     else
				pagingStr+="<button type=\"button\" class=\"btn btn-outline-secondary\"><a href='"+page+"nowPage="+intTemp+"'><span style='Color:gray'>"+intTemp+"</a></span></button>";

			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){
			pagingStr+="<button type=\"button\" class=\"btn btn-outline-secondary\"><a href='"+page+"nowPage="+intTemp+"'><span style='Color:gray'>다음</span></a></button>"+ 
					"<button type=\"button\" class=\"btn btn-outline-secondary\"><a href='"+page+"nowPage="+totalPage+"' ><span style='Color:gray'>끝</span></a></button>\r\n";
							   
		}
		pagingStr+="</div>";
		return pagingStr;
	}
	
}
