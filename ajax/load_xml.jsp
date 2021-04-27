<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>getTagNam</title>
</head>
<body>
<div id = 'getTagName'>
	
	<script src='file_upload.js'></script>

	<h2>이미지 미리보기 | 멀티 업로드 TEST</h2>
	<div class='input-wrap'>
		<input type='file' id='btnAtt' multiple />
	</div>
	<div class='imgs_wrap' id='imgs_wrap'>
	</div>
	<input type='button' value='멀티파일 전송' id='submitAction'/>
	<script>
		upload.start('btnAtt', 'submitAction', 'imgs_wrap', 'file_upload_action.jsp');
	</script>


</div>
</body>
</html>