<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>hap</title>
<style>
	#hap_result{
		width:400px;
		margin:30px auto;
		padding:20px;
		box-sizing: border-box;
		border:3px solid #aaa;
		box-shadow : 2px 2px 4px #bbb;
	}
	#hap_result h2{
		border-bottom:2px dotted #aaa;
	}
	
	#hap_result .result{
		font-size:20pt;
		color:#00f;
	}

</style>

</head>
<body>
<div id='hap_result'>
	<h2>HAP Result</h2>
	<%
		double su1 = Double.parseDouble(request.getParameter("su1"));
		double su2 = Double.parseDouble(request.getParameter("su2"));
		double hap = su1 + su2;
	%>
	<div class='result'>
		수 1 : <%=su1 %><br/>
		수 2 : <%=su2 %><br/>
		HAP Result : <%=hap %>
	</div>
</div>
</body>
</html>






