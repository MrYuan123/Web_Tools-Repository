package ShopStore;

import Javabeans.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Cart cart = (Cart) session.getAttribute("cart");
        try {
            String name = request.getParameter("Delete");
            String kind = request.getParameter("kind");

            if(kind.equals("book")){
                cart.getBook().remove(name);
            }else if(kind.equals("music")){
                cart.getMusic().remove(name);
            }else{
                cart.getLaptop().remove(name);
            }

            session.setAttribute("cart", cart);
            session.removeAttribute(name);
            // System.out.println("remove successfully!");
            request.getRequestDispatcher("/WEB-INF/jsp//ShopDisplay.jsp").forward(request, response);
        }catch (Exception e){
            System.out.println(e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp//ShopStore.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
