package connection;
import java.sql.*;

public class connect {

    static Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public static Connection makeConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "root");


        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static void CloseConnection() throws Exception {

        if (con != null) {
            con.close();
        }

    }
}
