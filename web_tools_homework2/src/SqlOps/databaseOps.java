package SqlOps;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class databaseOps {
    private static databaseOps dops;
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/homework2";
    private static final String USER = "root";
    private static final String PASS = "Yyk19951006+";

    private Connection conn = null;
    private Statement stmt = null;

    public static databaseOps getInstance() throws Exception{
        if(dops == null){
            dops = new databaseOps();
        }
        return dops;
    }

    public databaseOps() throws Exception{
        createConnectition();
        this.conn.setAutoCommit(false);
    }

    public void createConnectition(){
        try{
            Class.forName(JDBC_DRIVER );
            this.conn = DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.println("Database Connects Successfully!");
            return;
        }catch (Exception e){
            System.out.println("Create Step has Error: " + e.getMessage());
        }
    }

    public void closeConnection(){
        try{
            this.conn.close();
        }catch (Exception e){
            System.out.println("Close Step has Error: " + e.getMessage());
        }
    }

    public boolean submitIssue(ArrayList<List<String>> submitlist){
        System.out.println("Get into Submit Section!");
        if(this.conn == null){
            return false;
        }
        try {
            PreparedStatement ps = conn.prepareStatement("INSERT into bookdb values (?, ?, ?,?)");
            for(int m = 0; m < submitlist.size(); m++){
                ArrayList<String> sublist = (ArrayList<String>) submitlist.get(m);
                ps.setString(1, sublist.get(0));
                ps.setString(2, sublist.get(1));
                ps.setString(3, sublist.get(2));
                ps.setFloat(4, Float.parseFloat(sublist.get(3)));
                ps.setString(4, sublist.get(3));
                ps.addBatch();
            }

            int[] count = ps.executeBatch();
            this.conn.commit();
            for(int i: count){
                if(i == 0) {
                    this.conn.rollback();
                    return false;
                }
            }
            System.out.println("Submit Step Runs Successfully!");
        }catch (Exception e){
            System.out.println("Submit Step has Error: " + e.getMessage());
        }
        return true;
    }

    public boolean submitMovie(List<String> submitlist){
        System.out.println("Get into Submit Section!");
        if(this.conn == null){
            return false;
        }
        try{
            PreparedStatement ps = conn.prepareStatement("INSERT into moviedb values (?, ?, ?, ?, ?)");
            ps.setString(1, submitlist.get(0));
            ps.setString(2, submitlist.get(1));
            ps.setString(3, submitlist.get(2));
            ps.setString(4, submitlist.get(3));
            ps.setInt(5, Integer.parseInt(submitlist.get(4)));
            ps.addBatch();

            int[] count = ps.executeBatch();
            this.conn.commit();
            for(int i: count){
                if(i == 0) {
                    this.conn.rollback();
                    return false;
                }
            }

            System.out.println("Submit Step Runs Successfully!");
        }catch (Exception e){
            System.out.println("Submit Step has Error: " + e.getMessage());
        }
        return true;
    }

    public List<List<String>> SearchOps(String type, String keyword){
        ArrayList<List<String>> returnlist = new ArrayList<List<String>>();

        String sql = "select * from moviedb where " + type + "=\"" + keyword + "\";";
        ArrayList<String> title = new ArrayList<String>();
        title.add("title");
        title.add("actor");
        title.add("actress");
        title.add("genre");
        title.add("year");
        returnlist.add(title);
        try{
            this.stmt = this.conn.createStatement();
            ResultSet rs =this.stmt.executeQuery(sql);
            while(rs.next()){
                ArrayList<String> sublist = new ArrayList<String>();
                sublist.add(rs.getString("title"));
                sublist.add(rs.getString("actor"));
                sublist.add(rs.getString("actress"));
                sublist.add(rs.getString("genre"));
                sublist.add(String.valueOf(rs.getInt("year")));
                returnlist.add(sublist);
            }
        }catch (Exception e){
            System.out.println("In database Ops, there is a error!");
        }finally {
            return returnlist;
        }

    }
}
