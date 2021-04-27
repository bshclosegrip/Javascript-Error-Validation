<%@ page import="kr.jobtc.json.DataVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%// file name : jason_data.jsp %>
[
	{ "mid" : "hong",	"mname" : "홍길동", "phone" : "010-3434-3451"},
	{ "mid" : "kim",	"mname" : "김길동", "phone" : "010-3434-3452"},
	{ "mid" : "park",	"mname" : "박길동", "phone" : "010-3434-3453"},
	{ "mid" : "choi",	"mname" : "최길동", "phone" : "010-3434-3454"},
	{ "mid" : "lee",	"mname" : "이길동", "phone" : "010-3434-3455"},

<%
	DataVo vo = new DataVo();
	vo.setMid("nam");
	vo.setMname("남씨");
	vo.setPhone("010-3445-4555");
	String jason
		= String.format("{'mid' : '%s', 'mname' : '%s', 'phone' : '%s'}",
				vo.getMid(), vo.getMname(), vo.getPhone()
				);
	
	jason = jason.replaceAll("'", "\"");
	out.print(jason);
%>
]