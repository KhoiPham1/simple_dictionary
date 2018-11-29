<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Quang
  Date: 11/29/2018
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello","Xin chào");
    dic.put("how","Thế nào");
    dic.put("book", "Sách");
    dic.put("computer","Máy tính");

    String search = request.getParameter("dictionary");

    String result = dic.get(search);
    if (result != null){
        out.println("Word: " +search);
        out.println("Result: " +result);
    }else{
        out.println("Not found");
    }
%>
</body>
</html>
