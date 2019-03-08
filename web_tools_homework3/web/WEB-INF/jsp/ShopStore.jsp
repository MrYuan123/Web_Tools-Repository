<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 2/7/19
  Time: 20:26
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
<h1></h1>
<div class="row" style="padding-left: 10px;">
    <div class="col-md-2">
        <div class="list-group">
            <p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="BookSection()">Books</a></p>
            <p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="MusicSection()">Music</a></p>
            <p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="LaptopSection()">Laptop</a></p>
            <p style="text-align: center"><a href="/store?kind=cart" class="list-group-item list-group-item-action">Cart</a></p>
        </div>

    </div>
    <div class="col-md-10" id="replacePlace">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <form action="/store" method="post">
                    <input type="hidden" id="kind" name="kind" value="book">
                    <fieldset>
                        <fieldset class="form-group" id="replaceSection">
                            <legend id="subtitle">Books</legend>
                            <div class="form-check">
                                <label class="form-check-label" id="label1">
                                    <input class="form-check-input" type="checkbox" value="Book: Java Servlet Programming[$29.95]" name="book1">
                                    &nbsp;&nbsp;&nbsp;&nbsp;Java Servlet Programming&nbsp;[$29.95]
                                </label>
                            </div>
                            <div class="form-check disabled">
                                <label class="form-check-label" id="label2">
                                    <input class="form-check-input" type="checkbox" value="Book: Oracle Database Programming[$48.95]" name="book2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;Oracle Database Programming&nbsp;[$48.95]
                                </label>
                            </div>
                            <div class="form-check disabled">
                                <label class="form-check-label" id="label3">
                                    <input class="form-check-input" type="checkbox" value="Book: System Analysis and Design With UML[$14.95]" name="book3">
                                    &nbsp;&nbsp;&nbsp;&nbsp;System Analysis and Design With UML&nbsp;[$14.95]
                                </label>
                            </div>
                            <div class="form-check disabled">
                                <label class="form-check-label" id="label4">
                                    <input class="form-check-input" type="checkbox" value="Book: Objected Oriented Software Engineering[$35.99]" name="book4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]
                                </label>
                            </div>
                            <div class="form-check disabled">
                                <label class="form-check-label" id="label5">
                                    <input class="form-check-input" type="checkbox" value="Book: Java Web Services[$27.99]" name="book5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;Java Web Services&nbsp;[$27.99]
                                </label>
                            </div>
                        </fieldset>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </fieldset>
                </form>

            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</div>
</body>
<script>
    function BookSection () {
        document.getElementById("kind").value = "book";
        document.getElementById("subtitle").innerText="Books";
        document.getElementById("label1").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Java Servlet Programming[$29.95]\" name=\"book1\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Java Servlet Programming&nbsp;[$29.95]\n";
        document.getElementById("label2").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Oracle Database Programming[$48.95]\" name=\"book2\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Oracle Database Programming&nbsp;[$48.95]\n";
        document.getElementById("label3").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: System Analysis and Design With UML[$14.95]\" name=\"book3\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;System Analysis and Design With UML&nbsp;[$14.95]\n";
        document.getElementById("label4").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Objected Oriented Software Engineering[$35.99]\" name=\"book4\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]\n";
        document.getElementById("label5").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Java Web Services[$27.99]\" name=\"book5\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Java Web Services&nbsp;[$27.99]\n";
    }

    function MusicSection() {
        document.getElementById("kind").value = "music";
        document.getElementById("subtitle").innerText="Music";
        document.getElementById("label1").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Music: I'm Going To Tell You a Secret by Madonna[$26.99]\" name=\"music1\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;I'm Going To Tell You a Secret by Madonna&nbsp;[$26.99]\n";
        document.getElementById("label2").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Music: Baby One More Time by Britney Spears[$10.95]\" name=\"music2\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Baby One More Time by Britney Spears &nbsp;[$10.95]\n" ;
        document.getElementById("label3").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Music: Justified by Justin Timerlake[$9.97]\" name=\"music3\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Justified by Justin Timerlake&nbsp;[$9.97]\n";
        document.getElementById("label4").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Music: Loose by Nelly Furtado[$13.98]\" name=\"music4\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Loose by Nelly Furtado&nbsp;[$13.98]\n";
        document.getElementById("label5").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Music: Gold Digger by Kanye West[$27.99]\" name=\"music5\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Gold Digger by Kanye West&nbsp;[$27.99]\n";
    }

    function LaptopSection(){
        document.getElementById("kind").value = "laptop";
        document.getElementById("subtitle").innerText="Laptop";
        document.getElementById("label1").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Laptop: Apple MacBook Pro with 13.3 Display[$1299.99]\" name=\"laptop1\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Apple MacBook Pro with 13.3 Display[&nbsp;[$1299.99]\n";
        document.getElementById("label2").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Laptop: Asus Laptop with Centrino 2 Black[$949.95]\" name=\"laptop2\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Asus Laptop with Centrino 2 Black&nbsp;[$949.95]\n";
        document.getElementById("label3").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Laptop: HP Pavilion Laptop with Centrino 2 DV7[$1199.95]\" name=\"laptop3\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;HP Pavilion Laptop with Centrino 2 DV7&nbsp;[$1199.95]\n" ;
        document.getElementById("label4").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Laptop: Toshiba Satellite with Centrino 2 - Copper[$899.99]\" name=\"laptop4\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Toshiba Satellite with Centrino 2 - Copper&nbsp;[$899.99]\n";
        document.getElementById("label5").innerHTML =
            "<input class=\"form-check-input\" type=\"checkbox\" value=\"Laptop: Sony VAIO Laptop with Core 2 Duo Comspolitan Pink[$799.99]\" name=\"laptop5\">\n" +
            "&nbsp;&nbsp;&nbsp;&nbsp;Sony VAIO Laptop with Core 2 Duo Comspolitan Pink&nbsp;[$799.99]\n";
    }
</script>
</html>

<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: leonardyuan--%>
  <%--Date: 2/7/19--%>
  <%--Time: 20:26--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Book Application</title>--%>
    <%--<link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.css">--%>
    <%--&lt;%&ndash;<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">&ndash;%&gt;--%>
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>--%>
<%--</head>--%>
    <%--<body>--%>
        <%--<jsp:include page="NavigationBar.jsp" flush="true"></jsp:include>--%>
        <%--<h1></h1>--%>
        <%--<div class="row" style="padding-left: 10px;">--%>
            <%--<div class="col-md-2">--%>
                <%--<div class="list-group">--%>
                    <%--<p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="BookSection()">Books</a></p>--%>
                    <%--<p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="MusicSection()">Music</a></p>--%>
                    <%--<p style="text-align: center"><a href="#" class="list-group-item list-group-item-action" onclick="LaptopSection()">Laptop</a></p>--%>
                    <%--<p style="text-align: center"><a href="/store?kind=cart" class="list-group-item list-group-item-action">Cart</a></p>--%>
                <%--</div>--%>

            <%--</div>--%>
            <%--<div class="col-md-10" id="replacePlace">--%>
                <%--<div class="row">--%>
                    <%--<div class="col-md-2"></div>--%>
                    <%--<div class="col-md-6">--%>
                        <%--<form action="/store" method="post">--%>
                            <%--<input type="hidden" id="kind" name="kind" value="book">--%>
                            <%--<fieldset>--%>
                                <%--<fieldset class="form-group" id="replaceSection">--%>
                                    <%--<legend id="subtitle">Books</legend>--%>
                                    <%--<div class="form-check">--%>
                                        <%--<label class="form-check-label" id="label1">--%>
                                            <%--<%--%>
                                                <%--if(session.getAttribute("book1")==null){--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Java Servlet Programming[$29.95]\" name=\"book1\" >");--%>
                                                <%--}--%>
                                                <%--else{--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Java Servlet Programming[$29.95]\" name=\"book1\" checked>");--%>
                                                <%--}--%>
                                            <%--%>--%>
                                            <%--&nbsp;&nbsp;&nbsp;&nbsp;Java Servlet Programming&nbsp;[$29.95]--%>
                                        <%--</label>--%>
                                    <%--</div>--%>
                                    <%--<div class="form-check disabled">--%>
                                        <%--<label class="form-check-label" id="label2">--%>
                                            <%--<%--%>
                                                <%--if(session.getAttribute("book2") == null){--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Oracle Database Programming[$48.95]\" name=\"book2\">");--%>
                                                <%--}--%>
                                                <%--else{--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Oracle Database Programming[$48.95]\" name=\"book2\" checked>");--%>
                                                <%--}--%>
                                            <%--%>--%>

                                            <%--&nbsp;&nbsp;&nbsp;&nbsp;Oracle Database Programming&nbsp;[$48.95]--%>
                                        <%--</label>--%>
                                    <%--</div>--%>
                                    <%--<div class="form-check disabled">--%>
                                        <%--<label class="form-check-label" id="label3">--%>
                                            <%--<%--%>
                                                <%--if(session.getAttribute("book3") == null){--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: System Analysis and Design With UML[$14.95]\" name=\"book3\">");--%>
                                                <%--}else{--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: System Analysis and Design With UML[$14.95]\" name=\"book3\" checked>");--%>
                                                <%--}--%>
                                            <%--%>--%>

                                            <%--&nbsp;&nbsp;&nbsp;&nbsp;System Analysis and Design With UML&nbsp;[$14.95]--%>
                                        <%--</label>--%>
                                    <%--</div>--%>
                                    <%--<div class="form-check disabled">--%>
                                        <%--<label class="form-check-label" id="label4">--%>
                                            <%--<%--%>
                                                <%--if(session.getAttribute("book4") == null){--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Objected Oriented Software Engineering[$35.99]\" name=\"book4\">");--%>
                                                <%--}else{--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Objected Oriented Software Engineering[$35.99]\" name=\"book4\" checked>");--%>
                                                <%--}--%>
                                            <%--%>--%>
                                            <%--&nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]--%>
                                        <%--</label>--%>
                                    <%--</div>--%>
                                    <%--<div class="form-check disabled">--%>
                                        <%--<label class="form-check-label" id="label5">--%>
                                            <%--<%--%>
                                                <%--if(session.getAttribute("book5") == null){--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Java Web Services[$27.99]\" name=\"book5\">");--%>
                                                <%--}else{--%>
                                                    <%--out.println("<input class=\"form-check-input\" type=\"checkbox\" value=\"Book: Java Web Services[$27.99]\" name=\"book5\" checked>");--%>
                                                <%--}--%>
                                            <%--%>--%>
                                            <%--&nbsp;&nbsp;&nbsp;&nbsp;Java Web Services&nbsp;[$27.99]--%>
                                        <%--</label>--%>
                                    <%--</div>--%>
                                <%--</fieldset>--%>
                                <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                            <%--</fieldset>--%>
                        <%--</form>--%>

                    <%--</div>--%>
                    <%--<div class="col-md-4"></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</body>--%>
<%--<script>--%>
    <%--function BookSection () {--%>
        <%--document.getElementById("kind").value = "book";--%>
        <%--document.getElementById("subtitle").innerText="Books";--%>
        <%--document.getElementById("label1").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("book1") == null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Java Servlet Programming[$29.95]\\\" name=\\\"book1\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Java Servlet Programming[$29.95]\\\" name=\\\"book1\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Java Servlet Programming&nbsp;[$29.95]\n";--%>
        <%--document.getElementById("label2").innerHTML =--%>
            <%--<%--%>
               <%--if(session.getAttribute("book2") == null){--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Oracle Database Programming[$48.95]\\\" name=\\\"book2\\\">\\n\"");--%>
               <%--}else{--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Oracle Database Programming[$48.95]\\\" name=\\\"book2\\\" checked>\\n\"");--%>
               <%--}--%>
           <%--%>--%>
            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Oracle Database Programming&nbsp;[$48.95]\n";--%>
        <%--document.getElementById("label3").innerHTML =--%>
            <%--<%--%>
               <%--if(session.getAttribute("book3") == null){--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: System Analysis and Design With UML[$14.95]\\\" name=\\\"book3\\\">\\n\"");--%>
               <%--}else{--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: System Analysis and Design With UML[$14.95]\\\" name=\\\"book3\\\" checked>\\n\"");--%>
               <%--}--%>
           <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;System Analysis and Design With UML&nbsp;[$14.95]\n";--%>
        <%--document.getElementById("label4").innerHTML =--%>
            <%--<%--%>
               <%--if(session.getAttribute("book4") == null){--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Objected Oriented Software Engineering[$35.99]\\\" name=\\\"book4\\\">\\n\"");--%>
               <%--}else{--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Objected Oriented Software Engineering[$35.99]\\\" name=\\\"book4\\\" checked>\\n\"");--%>
               <%--}--%>
           <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]\n";--%>
        <%--document.getElementById("label5").innerHTML =--%>
            <%--<%--%>
               <%--if(session.getAttribute("book5") == null){--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Java Web Services[$27.99]\\\" name=\\\"book5\\\">\\n\"");--%>
               <%--}else{--%>
                   <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Book: Java Web Services[$27.99]\\\" name=\\\"book5\\\" checked>\\n\"");--%>
               <%--}--%>
           <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Java Web Services&nbsp;[$27.99]\n";--%>
    <%--}--%>

    <%--function MusicSection() {--%>
        <%--document.getElementById("kind").value = "music";--%>
        <%--document.getElementById("subtitle").innerText="Music";--%>
        <%--document.getElementById("label1").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("music1") == null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: I'm Going To Tell You a Secret by Madonna[$26.99]\\\" name=\\\"music1\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: I'm Going To Tell You a Secret by Madonna[$26.99]\\\" name=\\\"music1\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;I'm Going To Tell You a Secret by Madonna&nbsp;[$26.99]\n";--%>
        <%--document.getElementById("label2").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("music2") == null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Baby One More Time by Britney Spears[$10.95]\\\" name=\\\"music2\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Baby One More Time by Britney Spears[$10.95]\\\" name=\\\"music2\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Baby One More Time by Britney Spears &nbsp;[$10.95]\n" ;--%>
        <%--document.getElementById("label3").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("music3") == null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Justified by Justin Timerlake[$9.97]\\\" name=\\\"music3\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Justified by Justin Timerlake[$9.97]\\\" name=\\\"music3\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Justified by Justin Timerlake&nbsp;[$9.97]\n";--%>
        <%--document.getElementById("label4").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("music4") == null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Loose by Nelly Furtado[$13.98]\\\" name=\\\"music4\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Loose by Nelly Furtado[$13.98]\\\" name=\\\"music4\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Loose by Nelly Furtado&nbsp;[$13.98]\n";--%>
        <%--document.getElementById("label5").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("music5") == null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Gold Digger by Kanye West[$27.99]\\\" name=\\\"music5\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Music: Gold Digger by Kanye West[$27.99]\\\" name=\\\"music5\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Gold Digger by Kanye West&nbsp;[$27.99]\n";--%>
    <%--}--%>

    <%--function LaptopSection(){--%>
        <%--document.getElementById("kind").value = "laptop";--%>
        <%--document.getElementById("subtitle").innerText="Laptop";--%>
        <%--document.getElementById("label1").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("laptop1") ==null){--%>
                    <%--out.println(" \"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Apple MacBook Pro with 13.3 Display[$1299.99]\\\" name=\\\"laptop1\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println(" \"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Apple MacBook Pro with 13.3 Display[$1299.99]\\\" name=\\\"laptop1\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>
            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Apple MacBook Pro with 13.3 Display[&nbsp;[$1299.99]\n";--%>
        <%--document.getElementById("label2").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("laptop2") ==null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Asus Laptop with Centrino 2 Black[$949.95]\\\" name=\\\"laptop2\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Asus Laptop with Centrino 2 Black[$949.95]\\\" name=\\\"laptop2\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>
            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Asus Laptop with Centrino 2 Black&nbsp;[$949.95]\n";--%>
        <%--document.getElementById("label3").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("laptop3") ==null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: HP Pavilion Laptop with Centrino 2 DV7[$1199.95]\\\" name=\\\"laptop3\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: HP Pavilion Laptop with Centrino 2 DV7[$1199.95]\\\" name=\\\"laptop3\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>

            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;HP Pavilion Laptop with Centrino 2 DV7&nbsp;[$1199.95]\n" ;--%>
        <%--document.getElementById("label4").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("laptop4") ==null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Toshiba Satellite with Centrino 2 - Copper[$899.99]\\\" name=\\\"laptop4\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Toshiba Satellite with Centrino 2 - Copper[$899.99]\\\" name=\\\"laptop4\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>
            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Objected Oriented Software Engineering&nbsp;[$35.99]\n";--%>
        <%--document.getElementById("label5").innerHTML =--%>
            <%--<%--%>
                <%--if(session.getAttribute("laptop5") ==null){--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Sony VAIO Laptop with Core 2 Duo Comspolitan Pink[$799.99]\\\" name=\\\"laptop5\\\">\\n\"");--%>
                <%--}else{--%>
                    <%--out.println("\"<input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" value=\\\"Laptop: Sony VAIO Laptop with Core 2 Duo Comspolitan Pink[$799.99]\\\" name=\\\"laptop5\\\" checked>\\n\"");--%>
                <%--}--%>
            <%--%>--%>
            <%--+ "&nbsp;&nbsp;&nbsp;&nbsp;Sony VAIO Laptop with Core 2 Duo Comspolitan Pink&nbsp;[$799.99]\n";--%>
    <%--}--%>
<%--</script>--%>
<%--</html>--%>
