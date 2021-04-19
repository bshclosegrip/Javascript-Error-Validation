<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>if2</title>

<style>
	#if2{
		width:400px;
		margin:30px auto;
		border-radius:0px 35px 35px 0px;
		border-left-width:30px;
		background:linear-gradient(to right , #777, #fff 80%);
	               
	}
	
	#if2{
		box-shadow:0px 0px 30px 5px #f00;
	}
</style>

<div id = 'if2'>
	<h1>성적처리(if문)</h1>
	<label>국어</label>
	<input type = 'text' id = 'kor'/>
	<br/>
	<label>수학</label>
	<input type = 'text' id = 'math'/>
	<input type = 'button' value = '계산' id = 'btn'/>
	<br/>
	<script>
		document.write('<hr/>');
	</script>
	<label>결과</label>
	<input type = 'text' id = 'result'/>
</div>

<script>
	var kor = document.getElementById('kor');
	var math = document.getElementById('math');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
			
	btn.onclick = function(){	
		var k = Number(kor.value);
		var m = Number(kor.value);
		var tot = k + m;
		var avg = tot / 2;
		if(avg>=60){
			result.value='합격';
		}else {
			result.value='불합격';
		}
	}	
</script>
</head>
</html>