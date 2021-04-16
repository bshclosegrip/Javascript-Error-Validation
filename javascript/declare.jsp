<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>declare</title>
</head>
<body>
<div id = 'declare'>
	<h2>스크립트 작성 방법</h2>
	<div id = 'info'>
		<ol>
			<li>1) 웹 문서 안에 &ltscript>&lt/script>태그를 선언 작성</li>
			<li>태그에 script 속성 사용 작성</li>
			<li>외부에 스크립트 코드 작성 &ltscript>&lt>/script>태그를 사용 현재 문서 포함</li>
		</ol>
	</div>

	<h2>웹 문서 안에서 작성</h2>
	<input type='button' id='btnLogin' value='로그인'/>
	<script>
		var btn = document.getElementById('btnLogin');
		btn.onclick = function(){
			alert('버튼을 클릭했습니다.');
		}
	</script>
	
	<h2>태그에 작성</h2>
	<input type = 'button' value='로그아웃' onclick="javascript:alert('로그아웃 버튼이 클릭됨')"/>
	
	<h2>외부 문서에 작성 후 포함</h2>
	<input type = 'button' value = '회원가입' id = 'btnRegister'/>
	<script src = test.js></script>

</div>
</body>
</html>




















