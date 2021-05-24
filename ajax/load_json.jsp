<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>load_json</title>
</head>
<body>
<div id='load_json'>
	<h2>Load JSON</h2>
	<input type='button' id='btnJson' value='Load JSON'/>
	<input type='button' id='btnJsonList' value='Load JSON List'/>
	<div id='result'></div>
</div>
<script>
	var btn = document.getElementById('btnJson'); // $('#btnJson')
	var btnList = document.getElementById('btnJsonList'); // $('#btnJsonList')
	var rs = document.getElementById('result'); // $('#result')
	
	var xhr = new XMLHttpRequest();
	btn.onclick = function(){
			xhr.open('get', 'json_data.jsp');
			xhr.send();
			xhr.onreadystatechange = function(){
				if(xhr.status==200 && xhr.readyState==4){
					var data = xhr.responseText; //html, jsp, text, ...
					var json = JSON.parse(data);
					
					console.log(data);
					console.log(json);
					
					var str ='';
					for(var d of json){
						str += '<li>mid : '  + d.mid
						    + '<li>mname : ' + d.mname
						    + '<li>phone : ' + d.phone
								+ '<hr/>';
					}
					str = '';
					for(var i=0 ; i<json.length ; i++){
						str += '<li>mid : '  + json[i].mid
						    + '<li>mname : ' + json[i].mname
						    + '<li>phone : ' + json[i].phone
								+ '<hr/>';
					}
					
					rs.innerHTML = str;					        
					
				}
			}
		
	}
	
	btnJsonList.onclick = function(){
		xhr.open('get', 'json_data_list.jsp');
		xhr.send();
		xhr.onreadystatechange=function(){
			if(xhr.status==200 && xhr.readyState==4){
				var list = xhr.responseText;
				var json = JSON.parse(list);
				var str ='';
				for(var d of json){
					str += '<li>mid : '  + d.mid
					    + '<li>mname : ' + d.mname
					    + '<li>phone : ' + d.phone
							+ '<hr/>';
				}

				rs.innerHTML = str;
			}
		}
	}
	
	
</script>

</body>
</html>










