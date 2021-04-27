<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>append_removeChild</title>
</head>
<body>
<div id = 'append_removeChild'>
	<h2>상품 옵션 추가</h2>
	<label>컬러 : <input type = 'text' id = 'color'/>	</label>
	<input type = 'text' id = 'color'/>
	<input type = 'button' value = 'APPEND' id = 'btnAppend'/>
	<input type = 'button' value = 'REMOVE' id = 'btnRemove'/>
	<div id = 'zone'></div>
</div>
<script>
	var zone = document.getElementById('zone');
	var btnAppend = document.getElementById('btnAppend');
	var btnRemove = document.getElementById('btnRemove');
	var color = document.getElementById('color');
	
	btnAppend.onclick = function(){
		var radio = document.createElement('input');
		radio.setAttribute('type', 'radio');
		radio.setAttribute('value', color.value);
		
		radio.setAttribute('name', 'ra');
		
		label.appendChild(radio);
		label.innnerHTML += color.value;
		
		zone.appendChild(label);
	}
	btnRemove.onclick = function(){
		var radios = zone.getElementByTagName('input');
		for(var i = 0; i < radios.length; i ++){
			if(radios[i].checked){
				var p = radio[i].parentNode;
				zone.removeChild(p)
			}
		}
	}
</script>
</body>
</html>