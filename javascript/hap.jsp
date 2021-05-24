<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>hap</title>
<style>
	#hap{
		width:400px;
		margin:30px auto;
		padding:20px;
		box-sizing: border-box;
		border:3px solid #aaa;
		box-shadow : 2px 2px 4px #bbb;
	}

	#hap h2{
		border-bottom:2px dotted #aaa;
	}
	
	#hap input[type=submit]{
		margin:10px 40px;
	}
</style>

</head>
<body>
<div id='hap'>
	<h2>HAP</h2>
	<form name='frm' method='get' action='hap_result.jsp'>
		<label>수 1 <input type='text' name='su1'/></label>
		<br/>
		<label>수 2 <input type='text' name='su2'/></label>
		<br/>
		<input type='submit' value='전송'/>
		<br/>
	
	</form>

</div>
</body>
</html>