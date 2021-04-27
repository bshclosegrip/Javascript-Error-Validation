<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>load_jason</title>
</head>
<body>
<div id = 'load_jason'>
	<h2>Load JSON</h2>
	<input type = 'button' id = 'btnJason' value = 'Load JASON'/>
	<div id = 'result'></div>
</div>
<script>
	var btn = document.getElementById('btnJason'); // $('#btnJason')
	var rs = document.getElementById('result'); // $('#result')
	
	var xhr = new XMLHttpRequest();
	btn.onclick = function(){
		xhr.open('get', 'jason_data.jsp');
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				var data = xhr.responseText; // html, jsp, text, ...
				var jason = JSON.parse(data);
				
				console.log(data);
				console.log(jason);		
								
				str = '';
				for(var i = 0; i < jason.length; i ++){
					str += '<li>mid : ' + jason[0].mid
						+ '<li>mname : ' + jason[0].mname
						+ '<li>phone : ' + jason[0].phone
						+ '<hr/>';
				}
				rs.innerHTML = str;
			}
		}
	}
	btnJsonList.onclick = function(){
		xhr.open('get', 'jaon_data_list.jsp');
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				var list = xhr.responseTest;
				var json = JSON.parse(list);
				var str = '';
				for(var d of json){
					str += '<li>mid : ' + jason[0].mid
						+ '<li>mname : ' + jason[0].mname
						+ '<li>phone : ' + jason[0].phone
						+ '<hr/>';
				}
				rs.innerHTML = str;
			}
		}
	}
</script>
</body>
</html>
