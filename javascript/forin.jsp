<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>forin</title>
</head>
<body>
<div id='forin'>
	<script>
		var array = [234,235,234,2,6,36,34,2,34,24,24];
		var sum=0;
		var avg=0;
		var length = array.length; //배열의 갯수
		for(var i in array){
			sum += array[i];
		}
		avg = sum/length;
		
		console.log('합계:' + sum);
		console.log('평균:' + avg);
		console.log(array);
		console.table(array);
	
	</script>

</div>
</body>
</html>