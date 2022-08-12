package webDemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.payment;
import service.paymentService;

/**
 * Servlet implementation class ServeletAppointment
 */
//using inheritance
@WebServlet("/ServletPayment")
public class ServletPayment extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPayment() 
    {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    //exception handling
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		payment payment = new payment();
		
		payment.setusername(request.getParameter("username"));
		payment.setemail(request.getParameter("email"));
		payment.setnoOfProducts(request.getParameter("noOfProducts"));
		payment.setamount(request.getParameter("amount"));
		payment.setcredit(request.getParameter("credit"));
		payment.setbank(request.getParameter("bank"));
		
		paymentService paymentService = new paymentService();
	    paymentService.addpayment(payment);

		request.setAttribute("payment", payment);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home.jsp");
		dispatcher.forward(request, response);
		//doGet(request, response);	
	}

}
