<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 1/24/19
  Time: 00:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>Register Result</title>
    <link rel="stylesheet" href="https://bootswatch.com/_vendor/bootstrap/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/main">Web Tools HW1</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/main">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/showheaders">Headers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/sameservlet">Child Number</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/Store">Store</a>
            </li>
        </ul>
    </div>
</nav>

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <table class="table">
            <tr>
                <th>Key</th>
                <th>Value</th>
            </tr>
            <%
                Enumeration parameterNames = request.getParameterNames();
                while(parameterNames.hasMoreElements()){
                    String paramName = (String)parameterNames.nextElement();
                    out.print("<tr><td>" + paramName + "</td>\n");
                    String paramValue = request.getParameter(paramName);
                    out.println("<td> " + paramValue + "</td></tr>\n");
                }
            %>
        </table>
    </div>
    <div class="col-md-3"></div>
</div>
</body>
</html>
