<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>while2</title>

<style>
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
		color:#f0f; 
	}
	#while2 #result{
		margin-top:20px;
		width:100%;
		min-height:90px;
		background-color:#eee;
	}
</style>
</head>

<div id = 'while2'>

	<fieldset>
		<legend>while example</legend>
		<div>
			두 수 x, y를 입력받아 두 수 사이의 수 중
			4 또는 7의 배수의 갯수 출력
		</div>
	</fieldset>
	
	<div class = 'body'>
		<label>X</label>
		<input type = 'text' id = 'x' value = ' '/>	
		<br/>
		<label>Y</label>
		<input type = 'text' id = 'y' value = ' '/>	
		<input type = 'button' id = 'btn' value = '실행'/>	
		<div id = 'result'></div>
	</div>
</div>	
	
<script>		
	var btn = document.getElementById('btn');
	
	btn.onclick = function() {
		var x = Number(document.getElementById('x').value);
		var y = Number(document.getElementById('y').value);
		var result = document.getElementById('result');
		var num = 0;
	
		while (x <= y) {
			if (x % 4 == 0 || y % 7 == 0) {
				num++;
				x++;
			} else {
				x++;
			}
		}
		result.innerHTML = num;
	}
</script>

</body>
</html>