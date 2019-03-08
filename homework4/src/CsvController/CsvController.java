package CsvController;

import POJO.csvBean;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CsvController extends AbstractController {
    public CsvController() {
    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception{
        if(request.getMethod().equals("GET"))
            return new ModelAndView("CSVSearch");

        List<String> titles = new ArrayList<String>();
        List<List<String>> contents = new ArrayList<List<String>>();
        String FileName = request.getParameter("inputName");

        System.out.println(FileName);
        ModelAndView now = new ModelAndView("CSVDisplay");
        now.addObject("filename", FileName);
        return now;

//        try{
//            Class.forName("org.relique.jdbc.csv.CsvDriver");
//            String now_dir = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"../datas";
//
//            Connection conn = DriverManager.getConnection("jdbc:relique:csv:" + now_dir);
//            Statement stmt = conn.createStatement();
//            String SQL_QUERY = "SELECT *  FROM " + FileName;
//            ResultSet results = stmt.executeQuery(SQL_QUERY);
//            ResultSetMetaData meta = results.getMetaData();
//
//            while(results.next())
//            {
//                ArrayList<String> newcontent = new ArrayList<String>();
//                for(int m = 0; m < meta.getColumnCount(); m ++){
//                    newcontent.add(results.getString(m+1));
//                }
//                contents.add(newcontent);
//            }
//
//            for(int m = 0; m < meta.getColumnCount(); m ++){
//                titles.add(meta.getColumnName(m + 1));
//            }
//
//            csvBean csvMess = new csvBean();
//            csvMess.setContents(contents);
//            csvMess.setTitle(titles);
//            ModelAndView now = new ModelAndView("CSVDisplay");
//            now.addObject("csvcontents", csvMess);
//            return now;
//
//        }catch (Exception e){
//            System.out.println(e.getMessage());
//            return new ModelAndView("Error");
//        }

    }
}
