package StoreOps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
        request.getRequestDispatcher("/ShoppingStore.html").forward(request, response);
    }
}
