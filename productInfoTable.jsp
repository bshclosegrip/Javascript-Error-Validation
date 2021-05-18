<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>불건 table로 표시</title>
</head>
<body>
    <%!public String SelJob(int omt) {
        String omtName = "";
 
        switch (omt) {
        case 1:
        	omtName = "1000";
            break;
        case 2:
        	omtName = "5000";
            break;
        case 3:
        	omtName = "10000";
            break;
        default:
            break;
        }
 
        return omtName;
    }
 
    public String CheckGender(int gender) {
        String genderch = "";
 
        switch (gender) {
        case 0:
            genderch = "남자";
            break;
        case 1:
            genderch = "여자";
            break;
        }
 
        return genderch;
    }%>
    <%
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        int job = Integer.parseInt(request.getParameter("job"));
        String pw = request.getParameter("pass");
        int gender = Integer.parseInt(request.getParameter("gender"));
 
        out.print("<table border =" + "2 " + "width =" + "700 " + "align ="
                + "center " + "bordercolor =" + "green " + "cellspacing ="
                + "2 " + " bordercolor =" + "green >");
        out.print("<tr>");
        out.print("<th>" + "이름" + "</th>");
        out.print("<th>" + "ID" + "</th>");
        out.print("<th>" + "PW" + "</th>");
        out.print("<th>" + "성별" + "</th>");
        out.print("<th>" + "직업" + "</th>");
        out.print("</tr>");
 
        out.println("<td>" + name + "</td>");
        out.println("<td>" + id + "</td>");
        out.println("<td>" + pw + "</td>");
        out.println("<td>" + CheckGender(gender) + "</td>");
        out.println("<td>" + SelJob(job) + "</td>");
    %>
    </table>
</body>
</html>