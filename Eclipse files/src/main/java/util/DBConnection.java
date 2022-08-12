package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection 
{
	private static Connection connection;  // usage of singleton pattern

	private DBConnection() 
	{
		super();
	}
	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
		/*
		 * This create new connection objects when connection is closed or it is
		 * null
		 */
		if (connection == null || connection.isClosed()) {

			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/copyfinal","root","1234");
		}
		return connection;
	}
	public static Connection getConnection() 
   	{
   		// TODO Auto-generated method stub
   		return null;
   	} 
	
	

}








	/*	try
        {
            // create our mysql database connection
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost/oopfinal";
            Class.forName(myDriver);
            Connection connection = DriverManager.getConnection(myUrl, "root", "");
            
            // our SQL SELECT query. 
            // if you only need a few columns, specify them by name instead of using "*"
            String query = "SELECT * FROM admin";

            // create the java statement
            Statement st = connection.createStatement();

            //execute the query, and get a java resultset
            ResultSet rs = st.executeQuery(query);

            // iterate through the java resultset
            while (rs.next())
            {
               int id = rs.getInt("adminID");
               String firstName = rs.getString("username");
               String lastName = rs.getString("password");
                

                // print the results
                System.out.format("%s, %s, %s\n", id, firstName, lastName);
            }
            st.close();
        }
        catch(Exception e)
		{
   			 System.err.println("Got an exception! ");
   	         System.err.println(e.getMessage());
   		}
   	} */

   	/*public static Connection getConnection() 
   	{
   		// TODO Auto-generated method stub
   		return null;
   	} */

