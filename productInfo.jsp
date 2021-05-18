<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 테이블 생성</title>
</head>
<body>
    <h2>물건 테이블</h2>
    <table border="2" width=250 bordercolor="green" cellspacing="2"
        bordercolor="green">
        <form action="productInfoTable.jsp" method="post">
            <tr>
                <td>no</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>구분</td>
                <td><input type="text" name="gubun"></td>
            </tr>
            <tr>
                <td>입출고일</td>
                <td><input type="text" name="nal"></td>
            </tr>
            <tr>
                <td>제품코드</td>
                <td><input type="text" name="pCode"></td>
            </tr>
            <tr>
                <td>제품명</td>
                <td><input type="text" name="pName"></td>
            </tr>
            <tr>
                <td>수량</td>
                <td><input type="text" name="ea"></td>
            </tr>
            <tr>
                <td>단가</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>직업 :</td>
                <td align="center" colspan=1><select name="omt">
                        <option value="1">1,000</option>
                        <option value="2">5,000</option>
                        <option value="3">10,000</option>
                </select></td>
            </tr>
            <tr>
                <td>작성자</td>
                 <td><input type="radio" name="mid" value="0" checked>남자
                    <input type="radio" name="mid" value="1">박승현</td>
            </tr>
            
            <tr>
                <td align="center" colspan=2>
                <input type="submit" value="입력">
                <input type="reset" value="취소">
                </td>
            </tr>
    </table>
</body>
</html>