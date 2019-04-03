<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 3/8/19
  Time: 01:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>quiz</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-7">
            <c:choose>
                <c:when test="${requestScope.get('type') == 'result'}">
                    <c:forEach items="${sessionScope.keySet()}" var="s">
                        <strong><c:out value="${s}"/></strong>
                        <br>
                        <c:out value="${sessionScope.get(s)}"/>
                        <br>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <form action="${requestScope.get('nextUrl')}" method="post">
                            <legend><c:out value="${requestScope.get('quiz').getQuestion()}"/></legend>
                            <input type="hidden" name="question" value="${requestScope.get('quiz').getQuestion()}"/>
                            <c:forEach items="${requestScope.get('quiz').getAnswers()}" var="s">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="answer" value="${s}">
                                        ${s}
                                    </label>
                                </div>
                            </c:forEach>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </fieldset>
                    </form>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="col-md-2"></div>
    </div>
</body>
</html>
