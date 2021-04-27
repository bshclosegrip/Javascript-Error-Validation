<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>readText</title>
</head>
<body>
<div id = 'readText'>
	<input type = 'button' value = 'READ' id = 'btnText'/>
	<input type = 'button' value = '게시판' id = 'btnBoard'/>
	<input type = 'button' value = '방명록' id = 'btnGuest'/>
	<div id = 'result'></div>
	<div id = 'result2'></div>
	<div id = 'result3'></div>
	
</div>
<script>
var xhr = new XMLHttpRequest();
var btn = document.getElementById('btnText');
var btnBoard = document.getElementById('btnBoard');
var btnGuest = document.getElementById('btnGuest');
var rs = document.getElementById('result');
var rs2 = document.getElementById('result2');
var rs3 = document.getElementById('result3');

btnBoard.onclick = function(){
	var url = '../board/serch.jsp';
	xhr.open('get',url);
	xhr.send();
	xhr.onreadystatechange = function(){
		console.log(xhr.status + ',' + xhr.readyState);
		if(xhr.status == 200 && xhr.readyState == 4){
			var data = xhr.responseText;
			rs2.innerHTML = data;
		}
	}
}

btnGuest.onclick = function(){
	var url = 'myinfo.txt';
	xhr.open('get',url, true);
	xhr.send();
	xhr.onreadystatechange = function(){
		console.log(xhr.status + ',' + xhr.readyState);
		if(xhr.status == 200 && xhr.readyState == 4){
			var data = xhr.responseText;
			rs3.innerHTML = data;
		}
	}
}

btn.onclick = function(){
	var url = 'myinfo.txt';
	xhr.open('get',url, true);
	xhr.send();
	xhr.onreadystatechange = function(){
		console.log(xhr.status + ',' + xhr.readyState);
		if(xhr.status == 200 && xhr.readyState == 4){
			var data = xhr.responseText;
			rs.innerHTML = data;
		}
	}
}

</script>
</body>
</html>
