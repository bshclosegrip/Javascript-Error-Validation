<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name = 'viewport' content = 'width = device - width, initial - scale = 1.0'>
<title>jquery_test</title>

<script src = '../lib/jquery-3.6.0.min.js'></script>

</head>
<body>
<div id = 'jquery_test'>
	<h2>jquery test</h2>
</div>
<script>
	// $('#jquery_test>h2').css('color', '#0000ff');
	
	$('#jquery_test>h2').css({
		'color' : '#ff0000',
		'font-size' : '40pt'
	})
</script>
</body>
</html>