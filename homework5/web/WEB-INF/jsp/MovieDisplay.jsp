<%@ page import="java.util.List" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJOs.MovieEntity" %>
<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/1/19
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Book Application</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="row" >
    <div class="col-md-2"></div>
    <div class="col-md-8" >
        <table class="table">
            <tbody>
            <tr>
                <th><c:out value="Title"/></th>
                <th><c:out value="Actor"/></th>
                <th><c:out value="Actress"/></th>
                <th><c:out value="Genre"/></th>
                <th><c:out value="Year"/></th>
            </tr>
            <c:forEach items="${requestScope.get('movies')}" var="s">
                <tr>
                    <td>${s.getTitle()}</td>
                    <td>${s.getActor()}</td>
                    <td>${s.getActress()}</td>
                    <td>${s.getGenre()}</td>
                    <td>${s.getYear()}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="col-md-2"></div>
</div>
</body>
<script>
</script>
</html>
