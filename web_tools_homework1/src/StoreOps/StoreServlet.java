package StoreOps;

import HeaderOps.HeaderServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "StoreServlet")
public class StoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String kind = request.getParameter("kind");

        // session.invalidate();
        Enumeration<String> names =session.getAttributeNames();
        while(names.hasMoreElements()){
            String nowname = names.nextElement();
            // System.out.println(nowname + " : " + kind);
            if(nowname.contains(kind)){
                session.removeAttribute(nowname);
            }
        }

        Enumeration ParamterNames = request.getParameterNames();
        while(ParamterNames.hasMoreElements()){
            String paramName = (String)ParamterNames.nextElement();
            if(!paramName.equals("kind")){
                String paramValue = request.getParameter(paramName);
                session.setAttribute(paramName, paramValue);
            }
        }

        request.getRequestDispatcher("/ShoppingStore.html").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String kind = request.getParameter("kind");
            if(kind.equals("cart")){
                this.ConstructPage(request, response);
                // request.getRequestDispatcher("/cart.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("/ShoppingStore.html").forward(request, response);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
            request.getRequestDispatcher("/ShoppingStore.html").forward(request, response);
        }
    }

    public void ConstructPage(HttpServletRequest request, HttpServletResponse response){
        String leftSide = "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <title>Shopping</title>\n" +
                "    <link rel=\"stylesheet\" href=\"https://bootswatch.com/_vendor/bootstrap/dist/css/bootstrap.min.css\">\n" +
                "    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n" +
                "    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n" +
                "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n" +
                "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n" +
                "    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "\n" +
                "<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n" +
                "    <a class=\"navbar-brand\" href=\"/main\">Web Tools HW1</a>\n" +
                "    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n" +
                "        <span class=\"navbar-toggler-icon\"></span>\n" +
                "    </button>\n" +
                "    <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n" +
                "        <ul class=\"navbar-nav mr-auto\">\n" +
                "            <li class=\"nav-item active\">\n" +
                "                <a class=\"nav-link\" href=\"/main\">Home</a>\n" +
                "            </li>\n" +
                "            <li class=\"nav-item\">\n" +
                "                <a class=\"nav-link\" href=\"/showheaders\">Headers</a>\n" +
                "            </li>\n" +
                "            <li class=\"nav-item\">\n" +
                "                <a class=\"nav-link\" href=\"/sameservlet\">Child Number</a>\n" +
                "            </li>\n" +
                "            <li class=\"nav-item\">\n" +
                "                <a class=\"nav-link\" href=\"/Store\">Store<span class=\"sr-only\">(current)</span></a>\n" +
                "            </li>\n" +
                "        </ul>\n" +
                "    </div>\n" +
                "</nav>\n" +
                "\n" +
                "<div class=\"row\" style=\"padding-left: 10px;\">\n" +
                "    <div class=\"col-md-2\">\n" +
                "        <p style=\"text-align: center\"><a href=\"/Store\" class=\"list-group-item list-group-item-action\">Store Page</a></p>\n" +
                "\n" +
                "    </div>\n" +
                "    <div class=\"col-md-10\" id=\"replacePlace\">\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-md-2\"></div>\n" +
                "            <div class=\"col-md-6\" id=\"initiateArea\">\n" +
                "                <div class=\"panel panel-default\">\n" +
                "                    <div class=\"panel-heading\">Your Cart</div>\n" +
                "                    <ul class=\"list-group\">";
        HttpSession session = request.getSession(true);
        String middleside = "";
        Enumeration<String> names =session.getAttributeNames();
        while(names.hasMoreElements()){
            String nowname = names.nextElement();
            String paramValue = (String) session.getAttribute(nowname);
            middleside = middleside + "<li class=\"list-group-item\">"+paramValue +"</li>";
        }

        String rightSide = " </ul>\n" +
                "                </div>\n" +
                "            </div>\n" +
                "            <div class=\"col-md-4\"></div>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>";
        try{
            PrintWriter out = response.getWriter();
            out.println(leftSide + middleside + rightSide);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
