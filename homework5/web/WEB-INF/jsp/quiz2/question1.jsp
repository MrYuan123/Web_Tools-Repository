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
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<div class="row">
    <div class="col-md-3">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <form action="/quiz2.htm" method="post">
            <h1></h1>
            <button type="input" class="btn btn-primary" name="_target0" style="width: 90px;">Last</button>
            <h1></h1>
            <button type="input" class="btn btn-secondary" name="_target2" style="width: 90px;">Next</button>
            <h1></h1>
            <button type="input" class="btn btn-danger" name="_cancel" style="width: 90px;">Cancel</button>
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="col-md-7">
                <form action="/quiz2.htm" method="post">
                    <legend>What is the range of short data type in Java?</legend>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="answer1" value="-128 to 127">
                                -128 to 127
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="answer1" value="-32768 to 32767">
                                -32768 to 32767
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="answer1" value="-2147483648 to 2147483647">
                                -2147483648 to 2147483647
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="answer1" value="None of the mentioned">
                                None of the mentioned
                            </label>
                        </div>
                    <button type="input" class="btn btn-primary" name="_target2">Submit</button>
                    </fieldset>
                </form>
    </div>
    <div class="col-md-2">
    </div>
</div>
</body>
</html>
