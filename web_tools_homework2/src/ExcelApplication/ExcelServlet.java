package ExcelApplication;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


@WebServlet(name = "ExcelServlet")
public class ExcelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String now_dir = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"../excels/test.xls";
        System.out.println(now_dir);

        List<List<String>> nowlist = new ArrayList<List<String>>();
        try{
            HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream( new File(now_dir)));
            Sheet sheet = workbook.getSheetAt(0);
            Iterator<Row> rowIterator = sheet.rowIterator();
            while (rowIterator.hasNext()) {
                List<String> sublist = new ArrayList<String>();
                Row row = rowIterator.next();
                DataFormatter dataFormatter = new DataFormatter();
                Iterator<Cell> cellIterator = row.cellIterator();
                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
                    String cellValue = dataFormatter.formatCellValue(cell);
                    sublist.add(cellValue);
                }
                nowlist.add(sublist);
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        request.setAttribute("table", nowlist);
        request.getRequestDispatcher("ExcelDisplay.jsp").forward(request, response);
    }
}




//            XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(now_dir));
//            XSSFSheet sh = wb.getSheet("Sheet1");
//            int totalNoOfRows = sh.getLastRowNum();
//            int totalNoOfCols = sh.getRow(0).getLastCellNum();
//            System.out.println(totalNoOfCols);
//            System.out.println(totalNoOfRows);


//            int Row = sheet.getLastRowNum();
//            int Colum =  sheet.getRow(0).getPhysicalNumberOfCells();
//            System.out.println(Row + " : " + Colum);
//
//            for(int m = 1; m < Row; m ++){
//                HSSFRow row = sheet.getRow(m);