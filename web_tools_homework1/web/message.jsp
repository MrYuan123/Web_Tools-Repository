<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 1/23/19
  Time: 12:08
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
                    String methodkind = request.getParameter("readmethod");
                    if(methodkind.equals("getParameter")){
                        out.println("<tr><td><strong>File Link</strong></td><td>" + request.getParameter("uploadFile") + "</td></tr>");
                        out.println("<tr><td><strong>Email</strong></td><td>" + request.getParameter("email") + "</td></tr>");
                        out.println("<tr><td><strong>Password</strong></td><td>" + request.getParameter("password") + "</td></tr>");
                        out.println("<tr><td><strong>Repassword</strong></td><td>" + request.getParameter("repassword") + "</td></tr>");
                        out.println("<tr><td><strong>Gender</strong></td><td>" + request.getParameter("gender") + "</td></tr>");
                        out.println("<tr><td><strong>Country</strong></td><td>" + request.getParameter("country") + "</td></tr>");
                        out.println("<tr><td><strong>Address</strong></td><td>" + request.getParameter("address") + "</td></tr>");
                        out.println("<tr><td><strong>Hobby</strong></td><td>");
                        String hobby[] =request.getParameterValues("hobby");
                        for(int i=0;i<hobby.length;i++){
                            out.println(hobby[i] + ", ");
                        }
                        out.println("</td></tr>");
                        out.println("<tr><td><strong>Read Method</strong></td><td>" + request.getParameter("readmethod") + "</td></tr>");
                    }else if(methodkind.equals("getParameterNames")){
                        Enumeration parameterNames = request.getParameterNames();
                        while(parameterNames.hasMoreElements()){
                            String paramName = (String)parameterNames.nextElement();
                            if(paramName.equals("hobby")){
                                out.println("<tr><td><strong>Hobby</strong></td><td>");
                                String hobby[] =request.getParameterValues(paramName);
                                for(int i=0;i<hobby.length;i++){
                                    out.println(hobby[i] + ", ");
                                }
                                out.println("</td></tr>");
                            }
                            else{
                                out.println("<tr><td><strong>"+ paramName +"</strong></td><td>" + request.getParameter(paramName) + "</td></tr>");
                            }
                        }
                    }else{
                        Map nowmap  = request.getParameterMap();
                        Set s = nowmap.entrySet();
                        Iterator it  = s.iterator();

                        while(it.hasNext()){
                            Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>)it.next();
                            String key = entry.getKey();
                            String[] value = entry.getValue();
                            if(value.length == 1){
                                out.println("<tr><td><strong>"+ key +"</strong></td><td>" + value[0].toString() + "</td></tr>");
                            }else{
                                out.println("<tr><td><strong>Hobby</strong></td><td>");
                                for(int i=0;i<value.length;i++){
                                    out.println(value[i] + ", ");
                                }
                                out.println("</td></tr>");
                            }
                        }
                    }
                %>

                        <%--<tr>--%>
                            <%--<td><strong>File Link</strong></td>--%>
                            <%--<td><%= request.getParameter("uploadFile")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Email</strong></td>--%>
                            <%--<td><%= request.getParameter("email")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Password</strong></td>--%>
                            <%--<td><%= request.getParameter("password")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Repassword</strong></td>--%>
                            <%--<td><%= request.getParameter("repassword")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Gender</strong></td>--%>
                            <%--<td><%= request.getParameter("gender")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Countryr</strong></td>--%>
                            <%--<td><%= request.getParameter("country")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Address</strong></td>--%>
                            <%--<td><%= request.getParameter("address")%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td><strong>Method of Acquiring Datas</strong></td>--%>
                            <%--<td><%= request.getParameter("readmethod") + "()"%></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>

                            <%--<td><strong>Hobby</strong></td>--%>
                                <%--&lt;%&ndash;<td><%= request.getParameterValues("hobby")[0]%></td>&ndash;%&gt;--%>
                            <%--<td>--%>
                                <%--<%--%>
                                    <%--String hobby[] =request.getParameterValues("hobby");--%>
                                    <%--for(int i=0;i<hobby.length;i++){--%>
                                        <%--out.println(hobby[i] + ", ");--%>
                                    <%--}--%>
                                <%--%>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                <%--<%--%>
                    <%--String methodkind = request.getParameter("readmethod");--%>
                    <%--if(methodkind.equals("getParameter")){--%>
                        <%--out.println("<tr><td><strong>File Link</strong></td></td>" +request.getParameter("uploadFile")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>email</strong></td></td>" +request.getParameter("email")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>password</strong></td></td>" +request.getParameter("password")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>repassword</strong></td></td>" +request.getParameter("repassword")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>gender</strong></td></td>" +request.getParameter("gender")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>country</strong></td></td>" +request.getParameter("country")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>address</strong></td></td>" +request.getParameter("address")+ "</td></tr>");--%>
                        <%--out.println("<tr><td><strong>readmethod</strong></td></td>" +request.getParameter("readmethod")+ "</td></tr>");--%>
                        <%--String hobby2[] =request.getParameterValues("hobby");--%>
                        <%--for(int i=0;i<hobby2.length;i++){--%>
                            <%--out.println(hobby2[i] + ", ");--%>
                        <%--}--%>
                    <%--}else if(methodkind.equals("getParameterNames")){--%>
                        <%--out.println("<td><strong>readmethod</strong></td></td>" +request.getParameter("readmethod")+ "</td>");--%>
                    <%--}else{--%>
                        <%--out.println("<td><strong>readmethod</strong></td></td>" +request.getParameter("readmethod")+ "</td>");--%>
                    <%--}--%>
                <%--%>--%>
            </table>
        </div>
        <div class="col-md-3"></div>
    </div>
</body>
</html>
