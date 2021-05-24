<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<style>
	*{
		margin:0;
		padding:0;
		box-sizing: border-box;
	}
	#while2{
		width:450px;
		margin:40px auto;
		border:3px solid #aaa;
		border-radius:20px 0 20px 0;
		padding:40px;
	}
	#while2 fieldset{
		margin-top:20px;
		margin-bottom:20px;
		padding:15px;
		color:#00f;
	}
	#while2 #result{
		margin-top:20px;
		width:100%;
		min-height:90px;
		background-color:#eee;
	}
</style>
</head>
<body>
<div id='while2'>
	<h2>while</h2>
	<fieldset>
		<legend>while example</legend>
		<div>
			두 수 x,y을 입력받아 두 수 사이의 수 중 4또는 7의 배수의 갯수를 출력하시오. 
		</div>
	</fieldset>
	<div class='body'>
		<label>X</label>
		<input type='text' id='x' value='1'/>
		<br/>
		<label>Y</label>
		<input type='text' id='y' value='100'/>
		<br/>
		<input type='button' id='btn' value='실행'/>
		<div id='result'></div>
	</div>
</div>
<script>
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	var start=0; // x,y중에 항상 작은값
	var end=0; // x,y중에 항상 큰값
	var count = 0; // 배수의 갯수
	
	btn.onclick = function(){
		count=0;
		var x = Number(document.getElementById('x').value);
		var y = Number(document.getElementById('y').value);
		start = (x<y)? x : y;
		end   = (x>y)? x : y;
		
		while(start<=end){
			if( start%4==0 || start%7==0){
				count++;		
			}
			start++;
		}
		result.innerHTML = '4 또는 7의 배수의 갯수 :' + count;
	}
		
	
	
</script>
</body>
</html>














