package com.empleado.cr.db;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDb
{
    private static Connection connection = null;
    private static String login = "Sebastian_Taylor";
    private static String password = "12345";
    private static String url = "jdbc:oracle:thin:@localhost:1521:xe";

    public static Connection getConnection(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(url,login,password);
            connection.setAutoCommit(false);
            if(connection != null){
                System.out.println("Conneccion exitosa");
            }
            else{
                System.out.println("Coneccion fallida");
            }
        }catch (ClassNotFoundException | SQLException e)
        {
            System.out.println(e.getMessage());

        }
        return connection;
    }

    public void disconnect(){
        try {
            connection.close();
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    private Connection getJdbcMydbsource() throws NamingException {
        Context c = new InitialContext();
        try {
            return ((DataSource) c.lookup("jdbc/Mydbsource")).getConnection();
        } catch (NamingException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ConnectionDb c = new ConnectionDb();

        c.getConnection();

    }
}
