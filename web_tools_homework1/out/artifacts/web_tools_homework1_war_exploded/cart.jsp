<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 1/25/19
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shopping</title>
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
                <a class="nav-link" href="/main">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/showheaders">Headers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/sameservlet">Child Number</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/Store">Store<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<div class="row" style="padding-left: 10px;">
    <div class="col-md-2">
            <%--<p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="BookSection()">Books</a></p>--%>
            <%--<p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="MusicSection()">Music</a></p>--%>
            <p style="text-align: center"><a href="/Store" class="list-group-item list-group-item-action">Store Page</a></p>

    </div>
    <div class="col-md-10" id="replacePlace">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6" id="initiateArea" onclick="replacearea()">
                <div class="panel panel-default">
                    <div class="panel-heading">Your Cart</div>
                    <ul class="list-group">
                    <%
                        Enumeration<String> names =session.getAttributeNames();
                        while(names.hasMoreElements()){
                            String nowname = names.nextElement();
                            String paramValue = (String) session.getAttribute(nowname);
                            out.println("<li class=\"list-group-item\">"+paramValue +"</li>");
                        }
                    %>
                    </ul>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</div>
</body>
<script>
    function replacearea() {
        document.getElementById("subtitle")
    }
    function BookSection () {
        document.getElementById("kind").value = "book";
        document.getElementById("subtitle").innerText="Books";
        document.getElementById("label1").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Java Servlet Programming[$29.95]\" name=\"book1\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Java Servlet Programming&nbsp;[$29.95]\n";
        document.getElementById("label2").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Oracle Database Programming[$48.95]\" name=\"book2\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Oracle Database Programming&nbsp;[$48.95]\n";
        document.getElementById("label3").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"System Analysis and Design With UML[$14.95]\" name=\"book3\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;System Analysis and Design With UML&nbsp;[$14.95]\n";
        document.getElementById("label4").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Objected Oriented Software Engineering[$35.99]\" name=\"book4\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]\n";
        document.getElementById("label5").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Java Web Services[$27.99]\" name=\"book5\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Java Web Services&nbsp;[$27.99]\n";
    }

    function MusicSection() {
        document.getElementById("kind").value = "music";
        document.getElementById("subtitle").innerText="Music";
        document.getElementById("label1").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"I'm Going To Tell You a Secret by Madonna[$26.99]\" name=\"music1\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;I'm Going To Tell You a Secret by Madonna&nbsp;[$26.99]\n";
        document.getElementById("label2").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Baby One More Time by Britney Spears[$10.95]\" name=\"music2\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Oracle Database Programming&nbsp;[$48.95]\n" ;
        document.getElementById("label3").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Justified by Justin Timerlake[$9.97]\" name=\"music3\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Justified by Justin Timerlake&nbsp;[$9.97]\n";
        document.getElementById("label4").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Loose by Nelly Furtado[$13.98]\" name=\"music4\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Loose by Nelly Furtado&nbsp;[$13.98]\n";
        document.getElementById("label5").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Gold Digger by Kanye West[$27.99]\" name=\"music5\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Gold Digger by Kanye West&nbsp;[$27.99]\n";
    }

    function LaptopSection(){
        document.getElementById("kind").value = "laptop";
        document.getElementById("subtitle").innerText="Laptop";
        document.getElementById("label1").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Apple MacBook Pro with 13.3 Display[$1299.99]\" name=\"laptop1\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Apple MacBook Pro with 13.3 Display[&nbsp;[$1299.99]\n";
        document.getElementById("label2").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Asus Laptop with Centrino 2 Black[$949.95]\" name=\"laptop2\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Asus Laptop with Centrino 2 Black&nbsp;[$949.95]\n";
        document.getElementById("label3").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"HP Pavilion Laptop with Centrino 2 DV7[$1199.95]\" name=\"laptop3\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;HP Pavilion Laptop with Centrino 2 DV7&nbsp;[$1199.95]\n" ;
        document.getElementById("label4").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Toshiba Satellite with Centrino 2 - Copper[$899.99]\" name=\"laptop4\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]\n";
        document.getElementById("label5").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Sony VAIO Laptop with Core 2 Duo Comspolitan Pink[$799.99]\" name=\"laptop5\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Sony VAIO Laptop with Core 2 Duo Comspolitan Pink&nbsp;[$799.99]\n";
    }
</script>
</html>
