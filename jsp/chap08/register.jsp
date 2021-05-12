<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name = 'viewport' content = 'width=device-width, initial-scal=1.0'>
<title>register</title>
</head>
<body>
<div id = 'register'>
	<h3>제품 입고</h3>
	<form name = 'frm' method = 'post' action = 'register_result.jsp'>
		<label>제품코드</label>
		<input type = 'text' name = 'pCode' value = 'p001'/><br/>
		
		<label>제품명</label>
		<input type = 'text' name = 'pName' value = '냉장고'/><br/>
		
		<label>입고수량</label>
		<input type = 'text' name = 'ea' value = '5000'/><br/>
		
		<label>거래처</label>
		<input type = 'text' name = 'custom' value = '종료상회'/><br/>
		<br/>
		
		<label>단가</label>
		<input type = 'text' name = 'price' value = '10,000원'/><br/>
		<br/>
		
		<label>연락처</label>
		<input type = 'text' name = 'phone' value = '010-3434-3444'/><br/>
		<br/>
		
		<label>담당자</label>
		<input type = 'text' name = 'manager' value = '김성회'/><br/>
		<br/>
		<input type = 'submit' value = '저장'/>
	</form>
</div>