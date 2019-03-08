<%@ page import="java.util.List" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.movieBean" %>
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
    <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.css">
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>--%>
</head>
<body>
<jsp:include page="NavigationBar.jsp" flush="true"></jsp:include>
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
            <c:forEach items="${list}" var="s">
                <tr>
                        <%--<c:out value="<th>hello</th>"/>--%>
                        <%--<c:out value="<th>hello</th>"/>--%>
                        <%--<c:out value="<th>hello</th>"/>--%>
                    <th>${s.getTitle()}</th>
                    <th>${s.getActor()}</th>
                    <th>${s.getActress()}</th>
                    <th>${s.getGenre()}</th>
                    <th>${s.getYear()}</th>
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
