<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page import="kr.jobtc.json.DataVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// file name : jason_data.jsp 
	ArrayList<DataVo> list = new ArrayList<DataVo>();
	
	list.add(new DataVo("kim1", "김길동1", "010-3444-3441"));
	list.add(new DataVo("kim2", "김길동2", "010-3444-3442"));
	list.add(new DataVo("kim3", "김길동3", "010-3444-3443"));
	list.add(new DataVo("kim4", "김길동4", "010-3444-3444"));
	list.add(new DataVo("kim5", "김길동5", "010-3444-3445"));
	
	// list 담긴 객체 JSON 구조로 화면 출력
	
%>

[<%
 	for(int i=0; i<list.size(); i++){
 		DataVo v = list.get(i);
 		String str
 			= String.format("{'mid':'%s', 'mname':'%s'. 'phone':'%s'},", 
 					v.getMid(), v.getMname(), v.getPhone()
 					);
 		str = str.replaceAll("'", "\"");
 		out.print(str);
 		if(i<list.size()-1){
 			out.print(",");
 		}
 	}
	
%>]


