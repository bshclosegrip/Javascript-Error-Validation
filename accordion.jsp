<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
	<meta charset="EUC-KR">
	<meta name='viewport' content = 'width = device - width, initial - scale = 1.0'>
	<link rel='stylesheet' href = 'https://code.jquery.com/ui/1.12.1/themes/humanity/jquery-ui.css'>
	<script src='../lib/jquery-3.6.0.min.js'></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
	<title>accordion</title>
</head>
<body>
<div id = 'accordion'>
	<h2>front-end</h2>
	<div>
		<ul>
			<li>HTML5</li>
			<li>CSS</li>
			<li>이미지</li>
		</ul>
	</div>
	<h2>back-end</h2>
	<div>java, ajax, jquery, mybatis</div>
	
	<h2>framework</h2>
	<div>spring</div>
</div>
<script>
	$('#accordion').accordion();
	
	
</script>
</body>
</html>
