<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/1/19
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>


<html>
<head>
    <title>Book Application</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.css">
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="NavigationBar.jsp" flush="true"></jsp:include>
<div class="row" id="replaceSection">
    <div class="col-md-4"></div>
    <div class="col-md-4" >
        <c:choose>
            <c:when test="${pageContext.request.isUserInRole('admin')}">
                <form action="/csv" method="post">
                    <fieldset>
                        <div class="form-group">
                            <label class="col-form-label" for="inputName"><strong>Input CSV File Name: </strong></label>
                            <input type="text" class="form-control" placeholder="CSV File Name" name="inputName">
                        </div>
                        <button type="submit" class="btn btn-primary" >Submit</button>
                    </fieldset>
                </form>
            </c:when>
            <c:otherwise>
                <strong>You don' have proper authority to access this function.</strong>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
<script>
</script>
</html>
