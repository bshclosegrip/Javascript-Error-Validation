<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>virtual_class</title>
<style>
	*{
		margin:0;
		padding:0;
		box-sizing: border-box;
	}
	
	#virtual_class{
		margin:0 auto;
		width:600px;
	}
	#virtual_class .menu{
		margin-top:60px;
		height:30px;
		padding:4px;
		background-color:#4444ff;
		box-shadow: 2px 2px 3px 0px #aaa;
		border-radius: 6px;
	}
	#virtual_class .menu>ul>li{
		list-style: none;
		float:left;
		width:90px;
		height:23px;
		color:#fff;
		text-align: center;
		border-radius: 6px;
	}
	#virtual_class .menu>ul>li:hover{
		color:#4444ff;
		background-color:#fff;
		transition-property:background-color;
		transition-duration:1s;
	}
	
	/* 부메뉴 ----------------------- */
	#virtual_class .sub{
		border-left:2px solid #44f;
		border-right:2px solid #44f;
		border-bottom:2px solid #44f;
		border-radius:0 0 4px 4px;
		padding:5px;
		padding-top:10px;
		opacity:0;
		height:0;
		transition-property : opacity, height;
		transition-duration:1s;
	}
	#virtual_class .sub li{
		font-size:10pt;
		list-style: none;
		margin-left:-14px;
	}		
	
	#virtual_class .sub li:hover{
		background-color: #44f;
		color : #fff;
	}	
	
	/* 메뉴에 마우스가 올라가면 서브 메뉴 보여주기 ---*/
	#virtual_class .menu>ul>li:hover >.sub{
			opacity:1.0;
			height:100px;
			transition-property : opacity, height;
			transition-duration:2s;
	}
	

</style>
</head>
<body>
<div id='virtual_class'>
	<h2>가상 클래스,요소를 사용한 메뉴 설계</h2>
	<div class='menu'>
		<ul>
			<li>
				MENU1
				<div class='sub'>
					<ul>
						<li>부메뉴1</li>
						<li>부메뉴1</li>
						<li>부메뉴1</li>
						<li>부메뉴1</li>
					</ul>
				</div>
			</li>
			
			<li>
				MENU2
				<div class='sub'>
					<ul>
						<li>부메뉴2</li>
						<li>부메뉴2</li>
						<li>부메뉴2</li>
						<li>부메뉴2</li>
					</ul>
				</div>
			</li>

			<li>
				MENU3
				<div class='sub'>
					<ul>
						<li>부메뉴3</li>
						<li>부메뉴3</li>
						<li>부메뉴3</li>
						<li>부메뉴3</li>
					</ul>
				</div>
			</li>
		
			<li>MENU4</li>
			<li>MENU5</li>
			<li>MENU6</li>
		</ul>
	</div>

</div>
</body>
</html>