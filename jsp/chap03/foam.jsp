<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ����</title>
</head>
<body>

<form action="/chap03/viewParameter.jsp" method="post">
�̸�: <input type="text" name="name" size="10"> <br>
�ּ�: <input type="text" name="address" size="30"> <br>
�����ϴ� ����:
	<input type="checkbox" name="pet" value="dog">������
	<input type="checkbox" name="pet" value="cat">������
	<input type="checkbox" name="pet" value="pig">����
<br>
<input type="submit" value="����">
</form>
</body>
</html>