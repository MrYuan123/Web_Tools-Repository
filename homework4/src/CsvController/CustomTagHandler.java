package CsvController;

import POJO.csvBean;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomTagHandler extends SimpleTagSupport {
    private String filename;

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();

        try{
            Class.forName("org.relique.jdbc.csv.CsvDriver");
            String now_dir = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"../datas";

            Connection conn = DriverManager.getConnection("jdbc:relique:csv:" + now_dir);
            Statement stmt = conn.createStatement();
            String SQL_QUERY = "SELECT *  FROM " + this.filename;
            ResultSet results = stmt.executeQuery(SQL_QUERY);
            ResultSetMetaData meta = results.getMetaData();

            out.println("<tr>");
            for(int m = 0; m < meta.getColumnCount(); m ++){
                out.println("<th>" + meta.getColumnName(m + 1) + "</th>");
            }
            out.println("</tr>");

            while(results.next())
            {
                out.println("<tr>");
                for(int m = 0; m < meta.getColumnCount(); m ++){
                    out.println("<td>" + results.getString(m+1) + "</td>");
                }
                out.println("</tr>");
            }

        }catch (Exception e){
            System.out.println(e.getMessage());
            out.println("Error Happened!");
        }

//        if (filename !=null){
//            System.out.println("YES:" + filename + "**");
//        }else{
//            System.out.println("IS NULL");
//        }
//        StringWriter sw = new StringWriter();
//        getJspBody().invoke(sw);
//        out.println(sw.toString());
    }

}
