package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Data.CoffeeStoreData;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
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
		String username=request.getParameter("userName");
		String userid=request.getParameter("userId");
		HttpSession session=request.getSession();
		if(CoffeeStoreData.isMatch(username, userid)){
			session.setAttribute("success", "µÇÂ¼³É¹¦£¡");
			session.setAttribute("name", username);
			session.setAttribute("id", userid);
			response.sendRedirect(request.getContextPath()+"/successlogin.jsp");
		}else{
			request.setAttribute("message", "µÇÂ¼Ê§°Ü£¡");
			request.getRequestDispatcher("/head.jsp").forward(request, response);
		}
	}

}
