<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head><title>회원 목록</title></head>
<body>
      MEMBER 테이블의 내용
      <table width = "100%" border = "1">
      <tr>
            <td>성명</td>
            <td>이메일</td>
            <td>연락처</td>
            <td>급여</td>
      </tr>
      
<%

/* 
	오라클 데이터베이스 연결
	1) WEB-INF/lib/오라클 DB 드라이버 파일 복사
		```C:\app\2-24\product\18.0.0\dbhomeXE\jdbc\lib```
	2) Class.forName()을 사용 드라이버 메모리 로딩 : try catch
	3) DriverManage클래스 사용 오라클 DB 접속
	4) SQL문장 작성
	5) SQL문장 실행 : insert, update, delete => excuteUpdate(), selet => excuteQuery 실행
	6) Statement 또는 PreparedStatement 사용 실행 퀴리 객체 생성(connection 객체 사용)
	7) select 결과 ResultSet으로 받고, insert, update, delete는 적용된 행수 반환
*/

Class.forName("oracle.jdbc.driver.OracleDriver");
  
Connection conn = null; // DBMS와 Java연결객체
Statement stmt = null; // SQL구문을 실행
ResultSet rs = null; // SQL구문의 실행결과를 저장

String user = "system";
String pwd = "1234";

String findStr = request.getParameter("findStr");

// out.print(findStr);
String whereSql = "";
String token = "";

try
{
      String jdbcDriver = "jdbc:oracle:thin:@데이터베이스 주소:1521:ORCL";
      String dbUser = "system";
      String dbPass = "1234";

      String query = "select * from member order by memberid";

      // 2. 데이터베이스 커넥션 생성
      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

      // 3. Statement 생성
      stmt = conn.createStatement();

      // 4. 쿼리 실행
      rs = stmt.executeQuery(query);

      // 5. 쿼리 실행 결과 출력
      while(rs.next())
      {
%>
<tr>
      <td><%= rs.getString("name") %></td>
      <td><%= rs.getString("email") %></td>
      <td><%= rs.getString("phonenumber") %></td>
      <td><%= rs.getString("salary") %></td>
      <td><%= rs.getString("memberid") %></td>
</tr>
<%
      }
}catch(SQLException ex){
      out.println(ex.getMessage());
      ex.printStackTrace();
}finally{
      // 6. 사용한 Statement 종료
      if(rs != null) try { rs.close(); } catch(SQLException ex) {}
      if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}

      // 7. 커넥션 종료
      if(conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>
</table>
</body>
</html>
