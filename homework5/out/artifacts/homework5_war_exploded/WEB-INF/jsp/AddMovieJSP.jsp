<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/2/19
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%--<title>title</title>--%>
    <title>MOVIE PAGE</title>
        <link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<h1></h1>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <form:form action="/movie/add" method="post">
            <fieldset>
                <legend>Add Movie</legend>
                <%--<div class="form-group">--%>
                        <%--&lt;%&ndash;<label class="col-form-label col-form-label-lg" for="title">Movie Title: </label>&ndash;%&gt;--%>
                    <%--<input class="form-control" type="number" placeholder="Movie ID" name="id">--%>
                    <%--<form:errors path="id"/>--%>
                <%--</div>--%>
                <div class="form-group has-danger">
                    <%--<label class="col-form-label col-form-label-lg" for="title">Movie Title: </label>--%>
                    <input class="form-control" type="text" placeholder="Movie Title" name="title">
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="actor">Lead Actor: </label>--%>
                    <input class="form-control" type="text" placeholder="Lead Actor" name="actor">
                        <form:errors path="actor"/>
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="actress">Lead Actress: </label>--%>
                    <input class="form-control" type="text" placeholder="Lead Actress" name="actress">
                        <form:errors path="actress"/>
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="genre">Genre: </label>--%>
                    <input class="form-control" type="text" placeholder="Genre" name="genre">
                        <form:errors path="genre"/>
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="year">Year: </label>--%>
                    <input class="form-control"  type="number" min="1900" max="2019" step="1"  placeholder="Year" name="year">
                        <form:errors path="year"/>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </fieldset>
        </form:form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>