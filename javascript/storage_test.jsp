<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	console.log(localStorage.getItem("mid"));
	console.log(sessionStorage.getItem("name"));

	var obj2 = localStorage.getItem('obj');
	console.log(obj2);
	
	var o = JSON.parse(obj2);
	console.log("map=>object");
	console.log(o[0].phone);
	console.log(o[0].address);
	
	console.log(o[1].phone);
	console.log(o[1].address);
	
</script>
</body>
</html>