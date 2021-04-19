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
		width:400px;
		margin:50px;
	}
	#for2 .body{
		margin-top:20px;
		box-sizing: content-box;
		box-sizing: border-box;        
	}
	#for2 #result{
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
<div id = 'for2'>
	<h2>for2 미션 : 구구단</h2>
	<label>구구단</label>
	<input type = 'text' id = 'dan' value = '2' />
	<input type = 'button' id = 'btn' value = '실행' />
	<div id = 'result'></div>
</div>

<script>
	var dan = document.getElementById('dan');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	
	btn.onclick = function(){
		var d = Number(dan.value);
		var r = '';
		
		for(var i=1 ; i<=9 ; i++){
			r += d + '*' + i + '=' + (d*i) + '<br/>';
		}
		result.innerHTML = r;
	}
</script>
</body>
</html>