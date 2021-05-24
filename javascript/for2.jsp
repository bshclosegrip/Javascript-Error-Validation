<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>for2</title>
<style>
	#for2{
		width: 400px;
		margin:0 auto;
	}
	#for2 .body{
		margin-top:20px;
	}
	#for2 #result{
		width: 100%;
		min-height:100px;
		margin-top:10px;
		border:3px solid #aaa;
		padding:20px;
		box-sizing: border-box;
		border-radius: 15px;
		box-shadow: 2px 2px 4px #ccc;
	}
</style>
</head>
<body>
<div id='for2'>
	<h2>FOR</h2>
	<fieldset>
		<legend>미션</legend>
		<div>
			정수 n을 입력받아 n단의 구구단을 출력하시오.
		</div>
	</fieldset>
	<div class='body'>
		<label>구구단</label>
		<input type='text' id='dan' value='2'/>
		<input type='button' id='btn' value='실행'/>
		<div id='result'></div>
	</div>
</div>
<script>
	var dan = document.getElementById('dan');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	
	btn.onclick = function(){
		var d = Number(dan.value);
		
		var r = '';
		for(var i=1 ; i<10 ; i++){
			r += d + ' * ' + i + ' = ' + (d*i) + '<br/>';
		}
		result.innerHTML = r;
	}
</script>


</body>
</html>





