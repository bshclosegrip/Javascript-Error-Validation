<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>keyup | keypress | keydown</title>
</head>
<body>
<div id = 'keyup'>
	<h2>KEYUP Sample</h2>
	<div>엔터키 전송</div>
	<form name = 'frm' method = 'post'>
		<input type = 'text' size = '90' name = 'msg'/>
	</form>
</div>

<%
	String msg = request.getParameter("msg");

%>
Receive Message : <%=msg %>
<script>
var msg = document.msg;
msg.onkeyup = function(ev) {
	if(ev.keycode == 13){ //엔터기 눌렸다가 떼지면
	var frm = documnet.frm;
	frm.submit();
	}
}
</script>
</body>
</html>