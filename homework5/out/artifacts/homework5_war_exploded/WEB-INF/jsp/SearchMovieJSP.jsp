<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/2/19
  Time: 11:06
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
        <form action="/movie/search" method="post">
            <fieldset>
                <legend>Search Movie</legend>
                <div class="form-group">
                    <input class="form-control " type="text" placeholder="keyword" id="inputLarge" name="keyword" data-bv-notempty data-bv-notempty-message="Keyword cannot be empty." >
                </div>

                <fieldset class="form-group">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" id="title" value="title" name="type" checked="">
                            Search By Title
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" id="actor" value="actor" name="type">
                            Search By Actor
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" id="actress" value="actress" name="type">
                            Search By Actress
                        </label>
                    </div>
                </fieldset>
                <button type="submit" class="btn btn-primary">Submit</button>
            </fieldset>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>
