<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name = 'viewport' content = 'width = device - width, initial - scale = 1.0'>
<title>jquery_test2(CDN)</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>

</head>
<body>
<div id = 'jquery_test2'>
	<h2>jquery test2</h2>
</div>
<script>
	// $('#jquery_test2>h2').css('color', '#0000ff');
	
	$('#jquery_test2>h2').css({
		'color' : '#00ff00',
		'font-size' : '40pt'
	})
</script>
</body>
</html>