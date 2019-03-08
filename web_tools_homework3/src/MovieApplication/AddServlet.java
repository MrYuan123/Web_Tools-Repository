package MovieApplication;

import SqlOps.databaseOps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "AddServlet")
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> nowlist = new ArrayList<String>();
        Enumeration parameterNames = request.getParameterNames();
        while(parameterNames.hasMoreElements()){
            String paramName = (String)parameterNames.nextElement();
            String paramValue = request.getParameter(paramName);
            // System.out.println(paramName + " : "+ paramValue);
            nowlist.add(paramValue);
        }

        try{
            databaseOps dbsOps = databaseOps.getInstance();
            boolean result = dbsOps.submitMovie(nowlist);
            if(result == true){
                request.setAttribute("result", " Movie has been added!");
                request.setAttribute("formerpage", "/addmovie");
                request.getRequestDispatcher("/WEB-INF/jsp//ResultJSP.jsp").forward(request, response);
            }
            else{
                request.setAttribute("result", "Add Movie Fails!");
                request.setAttribute("formerpage", "/addmovie");
                request.getRequestDispatcher("/WEB-INF/jsp//ResultJSP.jsp").forward(request, response);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        // request.getRequestDispatcher("AddMovieJSP.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/AddMovieJSP.jsp").forward(request,response);
    }
}
