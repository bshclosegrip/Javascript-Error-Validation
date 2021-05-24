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
		display: flex;
		flex-direction: row;
		gap:5px;
	}
	#mouseover .imgs img{
		width:80px;
		height:80px;
	}
</style>
</head>
<body>
<div id='mouseover'>
	<img src='http://placehold.it/510x400' id='here' width='510' height='400'><br/>
	<div class='imgs'>
		<img src='../imgs/pic1.png' onmouseover='mover(0)'/>
		<img src='../imgs/pic2.png' onmouseover='mover(1)'/>
		<img src='../imgs/pic3.png' onmouseover='mover(2)'/>
		<img src='../imgs/pic4.png' onmouseover='mover(3)'/>
		<img src='../imgs/pic5.png' onmouseover='mover(4)'/>
		<img src='../imgs/pic6.png' onmouseover='mover(5)'/>
	</div>
</div>
<script>
	var imgs = ['pic1.png', 'pic2.png', 'pic3.png', 'pic4.png','pic5.png', 'pic6.png'];
	function mover(n){
		var here = document.getElementById('here');
		here.src = '../imgs/' + imgs[n];
	} 
</script>
</body>
</html>











