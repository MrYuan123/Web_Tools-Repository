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

//        if(session.isNew()){
////            session.setAttribute("books", new ArrayList<String>());
////            session.setAttribute("music", new ArrayList<String>());
////            session.setAttribute("laptop", new ArrayList<String>());
//            session.setAttribute("books","12345678");
//            System.out.println("Create a new Session!");
//        }else{
//            System.out.println(session.getAttribute("books"));
//        }

//        String kind = request.getParameter("kind");
//        List<String> newlist = new ArrayList<String>();
//        Enumeration ParamterNames = request.getParameterNames();
//        while(ParamterNames.hasMoreElements()){
//            String paramName = (String)ParamterNames.nextElement();
//            String paramValue = request.getParameter(paramName);
//            newlist.add(paramValue);
//            System.out.println(paramValue);
//        }

//        if(kind.equals("books")){
//            session.setAttribute("books", newlist);
//
//        }else if(kind.equals("music")){
//            session.setAttribute("music", newlist);
//        }else{
//            session.setAttribute("laptop", newlist);
//        }

        request.getRequestDispatcher("/cart.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/ShoppingStore.html").forward(request, response);
    }
}
