package MovieApplication;

import SqlOps.databaseOps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BrowserServlet")
public class BrowserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        System.out.println(type + " : "+ keyword);
        try{
            databaseOps dbsOps = databaseOps.getInstance();
            List<List<String>> result = dbsOps.SearchOps(type, keyword);
            request.setAttribute("list", result);
            System.out.println("Search Database Successfully! ");
        }catch (Exception e){
            System.out.println("Search Database Fails! " + e.getMessage());
        }

        request.getRequestDispatcher("CSVDisplay.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("SearchMovieJSP.jsp").forward(request, response);
    }
}
