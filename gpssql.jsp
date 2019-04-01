<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT 操作</title>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53423",secure:"53424"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/Tomcat_test/WebRoot/gpssql.jsp">
<!--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://203.195.152.23:3306/zhujunkai?useUnicode=true&characterEncoding=utf-8"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from gpstotals;
</sql:query>
<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/Tomcat_test/WebRoot/gpssql.jsp">JSP 数据库实例 - 菜鸟教程</h1>
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>uuid</th>
   <th>timestamp</th>
   <th>content</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.Id}"/></td>
   <td><c:out value="${row.uuid}"/></td>
   <td><c:out value="${row.timestamp}"/></td>
   <td><c:out value="${row.content}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>
