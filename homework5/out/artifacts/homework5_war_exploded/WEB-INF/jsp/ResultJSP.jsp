<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/1/19
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Book Application</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="row" id="replaceSection">
    <div class="col-md-5"></div>
    <div class="col-md-3" >
        <h1></h1>
        <h2><%= request.getAttribute("result")%></h2>
        <button type="button" class="btn btn-primary btn-lg btn-block"><a href=<%= request.getAttribute("formerpage")%>>Go back</a></button>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
<script>
</script>
</html>
