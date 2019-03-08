<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/7/19
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Book Application</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.css">
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="NavigationBar.jsp" flush="true"></jsp:include>
<div class="row" >
    <div class="col-md-2">
    </div>
    <div class="col-md-8" >
        <table class="table">
            <tbody>
            <tr>
                <th>Item</th>
                <th>Operation</th>
            </tr>

            <c:forEach items="${sessionScope.get('cart').getBook()}" var="s">
                <tr>
                <th>${s}</th>
                <th>
                    <form action="/delete" method="post">
                        <input type="hidden" name="Delete" value="${s}"/>
                        <input type="hidden" name="kind" value="book"/>

                        <button onclick="this.form.submit()" type="button" class="btn btn-secondary" name="delete" value="${s}">Delete</button>
                    </form>
                </th>
                </tr>
            </c:forEach>

            <c:forEach items="${sessionScope.get('cart').getMusic()}" var="s">
                <tr>
                    <th>${s}</th>
                    <th>
                        <form action="/delete" method="post">
                            <input type="hidden" name="Delete" value="${s}"/>
                            <input type="hidden" name="kind" value="music"/>

                            <button onclick="this.form.submit()" type="button" class="btn btn-secondary" name="delete" value="${s}">Delete</button>
                        </form>
                    </th>
                </tr>
            </c:forEach>

            <c:forEach items="${sessionScope.get('cart').getLaptop()}" var="s">
                <tr>
                    <th>${s}</th>
                    <th>
                        <form action="/delete" method="post">
                            <input type="hidden" name="Delete" value="${s}"/>
                            <input type="hidden" name="kind" value="laptop"/>
                            <button onclick="this.form.submit()" type="button" class="btn btn-secondary" name="delete" value="${s}">Delete</button>
                        </form>
                    </th>
                </tr>
            </c:forEach>

            <%--<c:forEach items="${sessionScope.keySet()}" var="s">--%>
                <%--<c:if test="${fn:contains(s, 'book')}">--%>
                    <%--<tr>--%>
                        <%--<th>${s}</th>--%>
                        <%--<th>${sessionScope.get(s)}</th>--%>
                        <%--<th>--%>
                            <%--<form action="/delete" method="post">--%>
                                <%--<input type="hidden" name="Delete" value="${sessionScope.get(s)}"/>--%>
                                <%--<input type="hidden" name="type" value="book"/>--%>

                                <%--<button onclick="this.form.submit()" type="button" class="btn btn-secondary" name="delete" value="${s}">Delete</button>--%>
                            <%--</form>--%>
                        <%--</th>--%>
                    <%--</tr>--%>
                <%--</c:if>--%>
                <%--<c:if test="${fn:contains(s, 'music')}">--%>
                    <%--<tr>--%>
                        <%--<th>${s}</th>--%>
                        <%--<th>${sessionScope.get(s)}</th>--%>
                        <%--<th>--%>
                            <%--<form action="/delete" method="post">--%>
                                <%--<input type="hidden" name="Delete" value="${sessionScope.get(s)}"/>--%>
                                <%--<input type="hidden" name="type" value="music"/>--%>
                                <%--<button onclick="this.form.submit()" type="button" class="btn btn-secondary" name="delete" value="${s}">Delete</button>--%>
                        <%--</form>--%>
                        <%--</th>--%>
                    <%--</tr>--%>
                <%--</c:if>--%>
                <%--<c:if test="${fn:contains(s, 'laptop')}">--%>
                    <%--<tr>--%>
                        <%--<th>${s}</th>--%>
                        <%--<th>${sessionScope.get(s)}</th>--%>
                        <%--<th>--%>
                            <%--<form action="/delete" method="post">--%>
                                <%--<input type="hidden" name="Delete" value="${sessionScope.get(s)}"/>--%>
                                <%--<input type="hidden" name="type" value="laptop"/>--%>
                                <%--<button onclick="this.form.submit()" type="button" class="btn btn-secondary" name="delete" value="${s}">Delete</button>--%>
                            <%--</form>--%>
                        <%--</th>--%>
                    <%--</tr>--%>
                <%--</c:if>--%>
            <%--</c:forEach>--%>
            </tbody>
        </table>
    </div>
    <div class="col-md-2"></div>
</div>
</body>
<script>
</script>
</html>
