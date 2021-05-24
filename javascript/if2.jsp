<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>if1</title>
<style>
	#if2{
		width:400px;
		margin:30px auto;
		border:2px solid #777;
		padding:0px 20px 20px 20px;
		box-sizing: border-box;
		border-radius:15px;
		box-shadow:3px 3px 6px 0px #888;
	}
	#if2 #result{
		color:#f00;
	}
</style>
</head>
<body>
<div id='if2'>
	<h2>성적처리(if문)</h2>
	<label>국어</label>
	<input type='text' id='kor'/>
	<br/>
	<label>수학</label>
	<input type='text' id='mat'/>
	<input type='button' value='계산' id='btn'/>
	<hr/>
	<label>결과</label>
	<input type='text' id='result'/>
</div>
<script>
	var kor = document.getElementById('kor');
	var mat = document.getElementById('mat');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	
	btn.onclick = function(){
		var k = Number(kor.value);
		var m = Number(mat.value);
		var tot = k+m;
		var avg = tot/2;
		if(avg>=60){
			result.value='합격';
		}else{
			result.value='불합격';
		}
		
	}
	
	
</script>
</body>
</html>









