<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>opener_sub</title>
</head>
<body>
<div id='opener_sub'>
	<input type='text' id='here'/>
	<input type='text' id='here2'/>
	
	<input type='button' value='변경' id='btnModify'/>
</div>
<script>
	window.onload = function(){
		var txt = window.opener.document.getElementById('send').value;
		var txt2 = window.opener.document.getElementById('send2').value;
		
		var here = document.getElementById('here');
		var here2 = document.getElementById('here2');
		
		var btnModify = document.getElementById('btnModify');
		here.value = txt;
		here2.value = txt2;
		
		btnModify.onclick = function(){
			 var receive = window.opener.document.getElementById('receive');
			 receive.value = here.value;
			 self.close();
		}
	}

</script>
</body>
</html>