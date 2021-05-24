<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<style>
	#flex #container>div , .header, .footer{
		border:1px solid #aaa;
		width:200px;
		
	}
	
	#container{
		display: flex;
		height:400px;
		/*
		flex-direction: row;
		flex-wrap:no-wrap;
		flex-flow : row no-wrap;
		align-items:stretch;
		*/
	}
	#container .a{
		flex: 2 1 0;
	}
	#flex .header, #flex .footer{
		width: 100%;
		background-color:#ddd;
	}
</style>
</head>
<body>

<div id='flex'>
	<div class='header'>HEADER</div>
	<div id='container'>
		<div class='a'>A</div>
		<div>B</div>
		<div class='a'>C</div>
		<div>D</div>
		<div>E</div>
	</div>
	<div class='footer'>FOOTER</div>
</div>

</body>
</html>