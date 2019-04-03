<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/1/19
  Time: 22:41
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
        <h2>Please Make Your Selection: </h2>
        <form>
            <fieldset>
                <div class="form-group">
                    <label for="exampleSelect1">--Find Action</label>
                    <select class="form-control" id="exampleSelect1" onchange="window.location=this.value;">
                        <option></option>
                        <option value="/movie/search">Browser Movies</option>
                        <option value="/movie/add">Add The Movies To Database</option>
                    </select>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>

