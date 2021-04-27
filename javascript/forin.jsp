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
<div id = 'forin'>
	<script>
		var array = [123, 45, 445, 56, 56, 78, 786];
		var sum = 0;
		var avg = 0;
		var length = array.length;
		for(var i in array){
			sum += array[i];
		}
		avg = sum / length;
		
		console.log('합계 : ' + sum);
		console.log('평균 : ' + avg);
		console.log(array);
	</script>
</div>
</body>
</html>