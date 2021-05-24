<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>index</title>
<link rel='stylesheet' type='text/css'
      href='./css/index.css'>
</head>
<body>
<%
	// 기본 include 페이지
	//String border = "./member/search.jsp";
	String border = "./member/member.do";
	String stock = "./product/search.jsp";
	String gb = "./guestbook/list.jsp";

	request.setAttribute("border", border);
	
%>
	<div id='index'>
		<div id='login'>
			<jsp:include page="loginForm.jsp"/>
		</div>
		
		<%@include file="header.jsp" %>
		
		<div id='center'>
			<div id='sub_menu'>서브메뉴</div>
			<div id='middle'>
				<div id='border'>
					
				</div>
				<div id='stock'>
					<jsp:include page="<%=stock %>"/>
				</div>
			</div>
			<div id='guestbook'>
				<jsp:include page="<%=gb %>"/>
			</div>
		
		</div>

		<%@include file="footer.jsp" %>	

	</div>
	
	<script>
		$('#border').load('${border}', 'job=search');
	
	</script>
</body>
</html>






