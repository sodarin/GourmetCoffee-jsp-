package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Data.CoffeeStoreData;
import Product.Customer;

/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name,id;
		name=request.getParameter("newName");
		id=request.getParameter("newId");
		Customer c=new Customer(name,id);
		if(CoffeeStoreData.isExistCustomer(c)){
			request.setAttribute("message", "该用户id已被注册");
			request.getRequestDispatcher("/head.jsp").forward(request, response);
		}else{
			CoffeeStoreData.writeSingleCustomer(c);
			request.setAttribute("message", "注册成功！");
			request.getRequestDispatcher("/head.jsp").forward(request, response);
		}
	}

}
