<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>array3</title>
<link rel = 'stylesheet' type = 'text/css' href = 'array3.css'>
</head>

<body>
<div id = 'array3'>
	<h2>성적처리</h2>
	<div class = 'left'>
		<form name = 'frm' method = 'post' action = ' '>
			<label>아이디</label>
			<input type = 'text' name = 'mid'/>
			<br/>
			<label>국어</label>
			<input type = 'text' name = 'kor'/>
			<br/>
			<label>수학</label>
			<input type = 'text' name = 'mat'/>
			<br/>
			<hr/>
			<label>총점</label>
			<input type = 'text' name = 'tot' readonly />
			<input type = 'button' value = '계산' id = 'btnCompute'/>
			<br/>
			<label>평균</label>
			<input type = 'text' name = 'avg' readonly/>
			<br/>
			<hr/>
			<div class = 'btn_zone'>
				<input type = 'button' value = '저장' id = 'btnSave' />
				<input type = 'button' value = '출력' id = 'btnOutput' />
			</div>
		</form>
	</div>
	
	<div class = 'right'>
			<h3>성적 처리 결과</h3>
			<div class = 'title'>
				<span class = 'mid'>아이디&nbsp&nbsp&nbsp</span>
				<span class = 'kor'>국어&nbsp&nbsp&nbsp</span>
				<span class = 'mar'>수학&nbsp&nbsp&nbsp</span>
				<span class = 'tot'>총점&nbsp&nbsp&nbsp</span>
				<span class = 'avg'>평균&nbsp&nbsp&nbsp</span>
			</div>
			<div>
				<span class = 'mid'>park&nbsp&nbsp&nbsp</span>
				<span class = 'kor'>80&nbsp&nbsp&nbsp</span>
				<span class = 'mar'>90&nbsp&nbsp&nbsp</span>
				<span class = 'tot'>170&nbsp&nbsp&nbsp</span>
				<span class = 'avg'>85&nbsp&nbsp&nbsp</span>
			</div>
	</div>
	
	<div id = 'status'>성적을 입력하세요~</div>
	<script src = 'array3.js'></script>
	
	<div id = 'items'>
		
	</div>
	<div id = 'info'>성적을 입력하세요~</div>
		
	<div id = 'result'>
	
	</div>

<script>
	var btn = document.getElementById('btn');
	btn.onclick = function(){
		var kor = Number(document.getElementById('kor').value);
		var mat = Number(document.getElementById('mat').value);
		var result = document.getElementById('result');
		var tot = 0;
		var avg = 0;
		tot = kor + mat;
		avg = tot/2;
		result.innerHTML = tot;
		result.innerHTML = avg;
	}
</script>

</div>
</body>
</html>