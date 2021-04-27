<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>mouseover</title>
<style>
	#mouseover{
		width:600px;
		margin:30px auto;
	}
	#mouseover .imgs{
		display:flex;
		flex-direction:row;
		gap:5px;
	}
	#mouseover .imgs img{
		width:80px;
		height:80px;
	}
</style>
</head>
<body>
<div id = 'mouseover'>
	<img src = 'http://placehold.it/500x400' id = 'here' width = '510' height = '400'><br/>
	<div class = 'imgs'>
		<img src = '../imgs/dog1.jpg' onmouseover='mover(0)'/>
		<img src = '../imgs/dog2.jpg' onmouseover='mover(1)'/>
		<img src = '../imgs/dog3.jpg' onmouseover='mover(2)'/>
		<img src = '../imgs/dog4.jpg' onmouseover='mover(3)'/>
		<img src = '../imgs/dog2.jpg' onmouseover='mover(4)'/>
		<img src = '../imgs/dog1.jpg' onmouseover='mover(5)'/>
	</div>
</div>
<script>
	var imgs = ['dog1.jpg', 'dog2.jpg', 'dog3.jpg', 'dog4.jpg'];
	function mover(n){
		var here = documnet.getElementById('here');
		here.src = '../imgs/' + imgs[n];
	}
</script>
</body>
</html>