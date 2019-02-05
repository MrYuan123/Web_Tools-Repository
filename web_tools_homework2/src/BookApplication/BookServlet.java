package BookApplication;

import SqlOps.databaseOps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "BookServlet")
public class BookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Enumeration parameterNames = request.getParameterNames();
        ArrayList<List<String>> nowlist = new ArrayList<List<String>>();

        while(parameterNames.hasMoreElements()){

            String paramName = (String)parameterNames.nextElement();
            String now_ISBN = request.getParameter(paramName);

            paramName = (String)parameterNames.nextElement();
            String now_Title = request.getParameter(paramName);

            paramName = (String)parameterNames.nextElement();
            String now_Authors = request.getParameter(paramName);

            paramName = (String)parameterNames.nextElement();
            String now_Price = request.getParameter(paramName);
            System.out.println(now_ISBN + " : "+ now_Title + " : "+ now_Authors + " : "+ now_Price);
            ArrayList<String> sublist = new ArrayList<String>();
            sublist.add(now_ISBN);
            sublist.add(now_Title);
            sublist.add(now_Authors);
            sublist.add(now_Price);
            nowlist.add(sublist);
        }

        try{
            databaseOps dbsOps = databaseOps.getInstance();
            boolean result = dbsOps.submitIssue(nowlist);
            if(result == true){
                request.setAttribute("result", nowlist.size() + " books has been added!");
                request.setAttribute("formerpage", "/part8");
                request.getRequestDispatcher("/ResultJSP.jsp").forward(request, response);
            }
            else{
                request.setAttribute("result", "Add Books Fails!");
                request.setAttribute("formerpage", "/part8");
                request.getRequestDispatcher("/ResultJSP.jsp").forward(request, response);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/BookJsp.jsp").forward(request, response);
    }
}
