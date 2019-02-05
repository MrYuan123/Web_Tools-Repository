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
        <h2>Please Make Your Selection: </h2>
        <form>
            <fieldset>
                <div class="form-group">
                    <label for="exampleSelect1">--Find Action</label>
                    <select class="form-control" id="exampleSelect1" onchange="window.location=this.value;">
                        <option></option>
                        <option value="/searchmovie">Browser Movies</option>
                        <option value="/addmovie">Add The Movies To Database</option>
                    </select>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>

