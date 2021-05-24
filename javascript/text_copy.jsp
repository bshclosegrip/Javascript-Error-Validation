<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>text_copy</title>
<style>
	#text_copy{
		width:500px;
		margin:30px auto;
	}
	#text_copy input[type=button]{
		width:80px;height:28px;
		margin-top:20px;
		margin-left:40px;
		
	}
</style>
</head>
<body onload='main()'>
<div id='text_copy'>
	<h2>문자열 복사하기</h2>
	<form name='frm' method='post' action=''>
		<label>원본</label>
		<input type='text' size='60' name='ori'/>
		<br/>
		<label>사본</label>
		<input type='text' size='60' name='target'/>
		<br/>
		<input type='button' value='COPY' id='btn' />
	</form>
</div>
<script>
function main(){
	var btn = document.getElementById('btn');
	btn.onclick = function(){
		var ff = document.frm;
		copy( ff );
	}
}

function copy( ff ){
	var v = ff.ori.value;
	ff.target.value = v;
}
</script>
</body>
</html>











