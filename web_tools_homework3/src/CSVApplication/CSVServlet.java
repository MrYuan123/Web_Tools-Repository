package CSVApplication;

import Javabeans.csvBean;
import Javabeans.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
// import org.relique.jdbc.csv.CsvDriver;


@WebServlet(name = "CSVServlet")
public class CSVServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // List<test> nowlist = new ArrayList<test>();
        List<String> titles = new ArrayList<String>();
        List<List<String>> contents = new ArrayList<List<String>>();
        String FileName = request.getParameter("inputName");
        try{
            Class.forName("org.relique.jdbc.csv.CsvDriver");
            // System.out.println("Get Into this section");
            String now_dir = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"../datas";
            // System.out.println(now_dir);
            Connection conn = DriverManager.getConnection("jdbc:relique:csv:" + now_dir );
            Statement stmt = conn.createStatement();
            String SQL_QUERY = "SELECT *  FROM " + FileName;
            ResultSet results = stmt.executeQuery(SQL_QUERY);

            ResultSetMetaData meta = results.getMetaData();

            for(int m = 0; m < meta.getColumnCount(); m ++){
                titles.add(meta.getColumnName(m + 1));
            }
            while (results.next())
            {
//                test newtest = new test();
//                newtest.setM(results.getString(1));
//                newtest.setName(results.getString(2));
//                newtest.setTitle(results.getString(3));
//                nowlist.add(newtest);

                ArrayList<String> newcontent = new ArrayList<String>();
                for(int m = 0; m < meta.getColumnCount(); m ++){
                    newcontent.add(results.getString(m+1));
                }
                contents.add(newcontent);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
//        request.setAttribute("list", nowlist);
        // System.out.println(nowlist.size());

        csvBean csvMess = new csvBean();
        csvMess.setContents(contents);
        csvMess.setTitle(titles);
        request.setAttribute("csvcontents", csvMess);
        request.getRequestDispatcher("/WEB-INF/jsp/CSVDisplay.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/CSVSearch.jsp").forward(request, response);
    }
}
