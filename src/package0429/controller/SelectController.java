package package0429.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import package0429.model.ShopVo;
import package0429.service.SelectService;
import package0429.service.SelectServiceI;


/**
 * Servlet implementation class SelectControll
 */
@WebServlet("/SelectController")
public class SelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		SelectServiceI s=new SelectService();
		List<ShopVo> li=s.select();
		request.setAttribute("li", li);
		RequestDispatcher d=request.getRequestDispatcher("/0429/List.jsp");
		d.forward(request, response);
	}
	//http://localhost:8080/StudentPage_JSP/0429/List.jsp

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
