package ShopStore;


import Javabeans.Cart;

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

        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null) {
            cart = new Cart();
            // System.out.println("Create a new cart");
        }
//        ArrayList<String> books = (ArrayList<String>) session.getAttribute("book");
//        ArrayList<String> music = (ArrayList<String>) session.getAttribute("music");
//        ArrayList<String> laptop = (ArrayList<String>) session.getAttribute("laptop");
//        books = books == null? new ArrayList<String>() : books;
//        music = music == null? new ArrayList<String>() : music;
//        laptop = laptop == null? new ArrayList<String>() : laptop;


        // session.invalidate();
//        Enumeration<String> names =session.getAttributeNames();
//        while(names.hasMoreElements()){
//            String nowname = names.nextElement();
//            // System.out.println(nowname + " : " + kind);
//            if(nowname.contains(kind)){
//                session.removeAttribute(nowname);
//            }
//        }

        Enumeration ParamterNames = request.getParameterNames();
        while(ParamterNames.hasMoreElements()){
            String paramName = (String)ParamterNames.nextElement();
            if(!paramName.equals("kind")){
                String paramValue = request.getParameter(paramName);
                session.setAttribute(paramName, paramValue);
                if(kind.equals("book")){
                    cart.getBook().add(paramValue);
                }else if(kind.equals("music")){
                    cart.getMusic().add(paramValue);
                }else{
                    cart.getLaptop().add(paramValue);
                }
            }
        }

        session.setAttribute("cart", cart);
        // System.out.println(((Cart) session.getAttribute("cart")).getBook().size());

        request.getRequestDispatcher("/WEB-INF/jsp//ShopStore.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String kind = request.getParameter("kind");

            if(kind.equals("cart")){
                request.getRequestDispatcher("/WEB-INF/jsp//ShopDisplay.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("/WEB-INF/jsp//ShopStore.jsp").forward(request, response);
            }
        }catch (Exception e){
            // System.out.println(e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp//ShopStore.jsp").forward(request, response);
        }
    }
}

