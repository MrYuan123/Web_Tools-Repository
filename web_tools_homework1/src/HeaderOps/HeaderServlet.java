package HeaderOps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/HeaderServlet")
public class HeaderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/header.jsp").forward(request, response);
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//
//        Enumeration headerNames = request.getHeaderNames();
//        String title = "Show All Datas in Header";
//        String docType =
//                "<!doctype html public \"-//w3c//dtd html 4.0 " +
//                        "transitional//en\">\n";
//        out.println(docType +
//                "<html>\n" +
//                "<head><meta charset=\"utf-8\"><title>" + title + "</title></head>\n" +
//                "<body bgcolor=\"#f0f0f0\">\n" +
//                "<h1 align=\"center\">" + title + "</h1>\n" +
//                "<table width=\"100%\" border=\"1\" align=\"center\">\n" +
//                "<tr bgcolor=\"#949494\">\n" +
//                "<th>variable</th><th>value</th>\n"+
//                "</tr>\n");
//
//        while(headerNames.hasMoreElements()){
//            String paramName = (String)headerNames.nextElement();
//            out.print("<tr><td>" + paramName + "</td>\n");
//            String paramValue = request.getHeader(paramName);
//            out.println("<td> " + paramValue + "</td></tr>\n");
//        }
//        String host = request.getHeader("host");
//
//        out.println("</table>\n"+ host+ "</body></html>");
    }
}
