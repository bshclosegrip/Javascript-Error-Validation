<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-sacle=1.0'>
<title>load_xml</title>
<style>
	#load_xml .items span{
		display : inline-block;
	}
	
	#load_xml .items{
		line-height:30px;
		border-bottom : 1px dotted #aaa;
	}
	#load_xml {
		width:500px;
		margin:50px auto;
	}
	
	#load_xml #result{
		min-height:100px;
		border:1.5px solid #ccc;
		padding:10px;
		margin-top:15px;
		border-radius:5px;
		box-shadow:2px 2px 3px #aaa;
	}
	
	#load_xml .id { width:80px;}
	#load_xml .name { width:120px;}
	#load_xml .address{ width:300px;}
</style>
</head>
<body>
<div id='load_xml'>
	<input type='button' value='text.xml' id='btnXML'/>
	<input type='button' value='xml_data' id='btnXMLData'/>
	<div id='result'>
		<div id='here'></div>
	</div>

</div>
<script>
	var xhr = new XMLHttpRequest();
	var rs = document.getElementById('here');
	var btn = document.getElementById('btnXML');
	var btnXML = document.getElementById('btnXMLData')
	
	btn.onclick = function(){
		xhr.open('get', 'text.xml')
		xhr.send()
		xhr.onreadystatechange=function(){
			if(xhr.status==200 && xhr.readyState==4){
				var xml = xhr.responseXML;
				console.log(xml);
				var ids = xml.getElementsByTagName('id');
				var names = xml.getElementsByTagName('name');
				var address= xml.getElementsByTagName('address');
				var str ='';
				for(var i= 0 ; i<ids.length ; i++){
					str += "<div class='items'>"
			        + "  <span class='id'>" + ids.item(i).firstChild.nodeValue + "</span>"
			        + "  <span class='name'>" + names.item(i).firstChild.nodeValue + "</span>"
			        + "  <span class='addre'>" + address.item(i).firstChild.nodeValue + "</span>"
							+ "</div>"
				}
				rs.innerHTML = str;								
			}
		}
	}
	btnXML.onclick = function(){
		xhr.open('get', 'xml_data.jsp');
		xhr.send();
		xhr.onreadystatechange=function(){
			if(xhr.status==200 && xhr.readyState==4){
				var xml = xhr.responseXML;

				var ids   = xml.getElementsByTagName('id');
				var names = xml.getElementsByTagName('name');
				var phones= xml.getElementsByTagName('phone');
				var str ='';
				for(var i= 0 ; i<ids.length ; i++){
					str += "<div class='items'>"
			        + "  <span class='id'>" + ids.item(i).firstChild.nodeValue + "</span>"
			        + "  <span class='name'>" + names.item(i).firstChild.nodeValue + "</span>"
			        + "  <span class='addre'>" + phones.item(i).firstChild.nodeValue + "</span>"
							+ "</div>"
				}
				rs.innerHTML = str;		
			}
		}
	}
</script>

</body>
</html>





