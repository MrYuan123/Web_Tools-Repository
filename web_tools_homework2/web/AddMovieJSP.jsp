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
    <link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.css">
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>--%>
</head>
<body>
<jsp:include page="NavigationBar.jsp" flush="true"></jsp:include>
<h1></h1>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <form action="/homework2-2/addmovie" method="post">
            <fieldset>
                <legend>Add Movie</legend>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="title">Movie Title: </label>--%>
                    <input class="form-control" type="text" placeholder="Movie Title" name="title">
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="actor">Lead Actor: </label>--%>
                    <input class="form-control" type="text" placeholder="Lead Actor" name="actor">
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="actress">Lead Actress: </label>--%>
                    <input class="form-control" type="text" placeholder="Lead Actress" name="actress">
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="genre">Genre: </label>--%>
                    <input class="form-control" type="text" placeholder="Genre" name="genre">
                </div>
                <div class="form-group">
                    <%--<label class="col-form-label col-form-label-lg" for="year">Year: </label>--%>
                    <input class="form-control"  type="number" min="1900" max="2019" step="1"  placeholder="Year" name="year">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </fieldset>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>