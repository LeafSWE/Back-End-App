package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


@SpringBootApplication
public class Application {
    private static Connection conn=null;
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);

    }

    public static Connection connect(){
        try {
            if(conn==null) {
                conn =
                        DriverManager.getConnection("jdbc:postgresql://localhost/leaf_database?" +
                                "user=leafs&password=Th1si5L3afs!pWd");
            }
        } catch (SQLException ex) {
            // handle any errors
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }
        return conn;
    }

    public static ResultSet query(String query) {
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = connect().createStatement();
            if(stmt!=null) {
                if (stmt.execute(query)) {
                    rs = stmt.getResultSet();
                }
            }
        }
        catch (SQLException ex){
            // handle any errors
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }
        finally {
            return rs;
        }
    }

}
