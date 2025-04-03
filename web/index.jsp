<%-- 
    Document   : index
    Created on : Apr 3, 2025, 8:59:30 AM
    Author     : Madusanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<% 
session.setAttribute("name", "ishara Madusanka");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:setDataSource
            driver="com.mysql.cj.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/wcd2?useSSL=false"
            user="root"
            password=""
            var="c"
            scope="request"
            />
        
        <%--<s:update dataSource="${requestScope.c}" sql="INSERT INTO `user` VALUES('0713329854', 'Ishara', 'Colombo')" />--%>
        <%--<s:update dataSource="${requestScope.c}" sql="INSERT INTO `user` VALUES('0745236524', 'Kasun', 'Colombo')" />--%>
        
        <s:query dataSource="${requestScope.c}" sql="SELECT * FROM `user`" var="r" scope="request" />
        
        <x:forEach var="y" items="${requestScope.r.rows}">
            <p>${y.mobile}</p>
        </x:forEach>
    </body>
</html>
