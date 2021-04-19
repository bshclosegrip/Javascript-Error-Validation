<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>while1</title>

<style>
	#while1{
		width:400px;
		margin:50px;
	}
	#while1 .body{
		margin-top:20px;
		box-sizing: content-box;
		box-sizing: border-box;        
	}
	#while1 #result{
		min-height:100px;
		position : relative;
		border:2px solid #aaa;
		margin-top:10px;
		width:100%;
		height:100px;
		padding:20px;
		border-radius:15px;
		box-shadow: 2px 2px 4px #ccc;
	}
</style>
</head>

<body>
<div id = 'while1'>
	<fieldset>
	
		<legend>while example</legend>
		<div>
			두 수의  : (x, y) || (2, 3)씩 증가하고 있다. 합이 1000이상 일 때 해당 합, x, y 출력
		</div>
		
	</fieldset>
	<div id = 'result'></div>
				
<script>
	var result = document.getElementById('result');
	var x = 1, y = 1;
	var r = '<ul>';
	var sum = 0;
	while(sum < 1000) {
		x = x + 2;
		y = y + 3;
		sum = x + y;
	}
	r += '<li>X=' + x + '</li>';
	r += '<li>Y=' + y + '</li>';
	r += '<li>SUM=' + sum + '</li>';
	r += '</ul>';
	
	result.innerHTML = r;
</script>

</div>
</body>
</html>




















