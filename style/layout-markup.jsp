<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scal=1.0'>
<title>layout-markup</title>
<style>
	
	*{
		padding:0;
		margin :0;
		box-sizing: border-box;
	}
	#layout_markup{
		width:1200px;
		margin : 0 auto;
	}

	#layout_markup>div{
		border:1px solid #ccc;
		padding:20px;
	}
	#layout_markup #contents{
		width:750px;
		float:left;
		background-color : #88f;
		height:300px;
	}
	#layout_markup #sidebar{
		width: 450px;
		height:350px;
		float:right;
	}
	#layout_markup #footer{
		clear:both;
		height:90px;
		background-color : #ddd;
	}
</style>
</head>
<body>
<div id='layout_markup'>
	<div id='header'>
		<h1>Layout</h1>
	</div>
	<div id='sidebar'>side bar</div>
	<div id='contents'> contents</div>
	<div id='footer'>
		<h2>footer</h2>
	</div>



</div>
</body>
</html>