<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>array_sort</title>
<style type="text/css">

</style>
</head>
<body>
<div id = 'array_sort'>
	<fieldset>
		<legend>배열 정렬</legend>
		<div>
			자바스크립트의 sort()함수는 기본적으로 정렬시 문자열로 인식 정렬
			숫자형 정렬 : 함수의 매개변수로 전달
		</div>
	</fieldset>
	<script>
		var su = [34,456,45,6,4,265,26,457,4];
		su.sort(my); //함수 호출시 함수명으로만 호출하는 경우 : call back 유형 호출
		console.log(su);
		
		su.reverse();
		console.log(su);		
		function my(x, y){
			var a = Number(x);
			var b = Number(y);
			return a-b;
		}
	</script>
	
</div>
</body>
</html>