package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import model.payment;
import util.DBConnection;

public class paymentService 
{
	private static Connection connection;

	private PreparedStatement preparedStatement;
	
	
	public void addpayment(payment payment) 
	{	
		try {
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement
			("insert into payment (username, email, noOfProducts, amount, credit, bank) values (?, ?, ?, ?, ?, ?)");
			connection.setAutoCommit(false);
			
			preparedStatement.setString(1, payment.getusername());
			preparedStatement.setString(2, payment.getemail());
			preparedStatement.setString(3, payment.getnoOfProducts());
			preparedStatement.setString(4, payment.getamount());
			preparedStatement.setString(5, payment.getcredit());
			preparedStatement.setString(6, payment.getbank());
			
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | ClassNotFoundException e) 
		{
			System.out.println("Severe Exception "+e.getMessage());
		} finally 
		{
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				   if (preparedStatement != null) 
				   {
					   preparedStatement.close();
				   }
				   if (connection != null)
				   {
					   connection.close();
				   }
			    } catch (SQLException e)
			      {
				       System.out.println("Severe SQL error"+ e.getMessage());
			      }
		}
	}
}
