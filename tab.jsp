<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
	<meta charset="EUC-KR">
	<meta name = 'viewport' content = 'width = device - width, initial - scale = 1.0'>
	<link rel = 'stylesheet' href = 'https://code.jquery.com/ui/1.12.1/themes/black-tie/jquery-ui.css'>
	<script src = '../lib/jquery-3.6.0.min.js'></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
	<title>tabs</title>
</head>
<body>
<div id = 'tabs'>
	<!-- tab에 들어갈 메뉴 -->
	<ul>
		<li><a href='#menu_html'>#menu_html 소개</a></li>
		<li><a href='#menu_css'>#menu_css 소개</a></li>
		<li><a href='#menu_javascript'>#menu_javascript 소개</a></li>
		<li><a href='#menu_ajax'>#menu_ajax 소개</a></li>
		<li><a href='#menu_jquary'>#menu_jquary 소개</a></li>
	</ul>
</div>
<script>
	$('#tabs').tabs();
</script>
</body>
</html>
