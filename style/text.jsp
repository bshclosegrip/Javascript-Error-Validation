<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
	<meta charset="UTF-8">
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<title>텍스트 스타일</title>
	<style>
		/*text-shadow안에 있는 문자의 색상과 크기를 변경 */
		#text #text-shadow{
			color : #0000ff;
			font-size:60pt;
			font-weight:bold;
			text-shadow: 0px 0px 20px #999900; 
			
		}	
		
		#white-space div{
			border:1px solid #aaaaaa;
			padding:10px;
			width: 800px;
			margin:10px;
		}	
		
		#white-space .type1{
			white-space:nowrap;
			overflow:hidden;
			text-overflow:ellipsis;
		}	
		#white-space .type2{
			white-space : pre-line;
		}
		#white-space .type3{
			white-space : pre-wrap;
		}
		
		#line-height{
			border:2px solid #888;
			width:300px;
			height:250px;
			font-size:4em;
			/*padding-top:80px;*/
			line-height:250px;
			box-sizing:border-box;
		}
	</style>
</head>
<body>
<div id='text'>
	<h1>text-shadow</h1>
	<div id='text-shadow'>
		박원기
	</div>
	
	<div id='white-space'>
		<div class='type1'>
			너의 설레는 힘차게 위하여서 이상의 열락의 주는 낙원을 약동하다. 
			설산에서 장식하는 열락의 갑 새 주는 그러므로 말이다. 만천하의 같으며, 역사를 때문이다. 
		</div>
		<div class='type2'>
			너의          설레는     힘차게 위하여서 이상의 열락의 주는 낙원을 약동하다. 
			설산에서 장식하는 열락의 갑 새 주는 그러므로 말이다. 만천하의 같으며, 역사를 때문이다. 
		</div>
		<div class='type3'>
			너의         설레는 힘차게 위하여서 이상의 열락의 주는 낙원을 약동하다. 
			설산에서 장식하는 열락의 갑 새 주는 그러므로 말이다. 만천하의 같으며, 역사를 때문이다. 
		</div>
	
	</div>
	
	<div id='line-height'>
		박원기
	</div>
	

</div>

</body>
</html>