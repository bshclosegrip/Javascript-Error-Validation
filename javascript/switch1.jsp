<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>switch1</title>

<style>
	#switch1{
		width:400px;
		margin:30px auto;
		border-radius:45px 45px 45px 45px;
		border-left-width:30px;
		background:linear-gradient(to right , #777, #f00 80%);
		box-shadow:0px 0px 30px 30px #f0f;
	}
</style>

<div id = 'switch1'>
	<h1>swtich문 예제(switch.jsp)</h1>
	<label>입력</label>
	<input type = 'text' id = 'custom'/>
	<input type = 'button' value = '확인' id = 'btn'/>
	<br/>
	<script>
		document.write('<hr/>');
	</script>
	<label>결과</label>
	<input type = 'text' id = 'result'/>
</div>

<script>
	var custom = document.getElementById('custom');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
				
	btn.onclick = function(){	
		var c1 = custom.value;
		
		switch(c1){
			case 'A' :
				result.value='vip 고객';
				break;
				
			case 'B' :
				result.value='우수 고객';
				break;
				
			case 'C' :
				result.value='고객';
				break;
				
			case 'D' :
				result.value='진상';
				break;
				
			case 'E': case 'F' :
				result.value='10진상';
				break;
			
			default:
				result.value='누구';
				break;
		}
	}	
</script>

<body>
	<script>
		document.write( '<p>' + c11 + '</p>' );
	</script>
</body>
  
</head>
</html>