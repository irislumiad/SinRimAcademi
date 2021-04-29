package package0429.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import package0429.model.ShopVo;
import package0429.service.InsertSerivce;
import package0429.service.InsertServiceI;

/**
 * Servlet implementation class InsertController
 */
@WebServlet("/InsertController")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath()); // 이게 로컬 경로를 받아오는 값 
		
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		
		int price = Integer.parseInt(request.getParameter("price"));
		//숫자로 받아준다?
		String etc = request.getParameter("etc");
		int amount = Integer.parseInt(request.getParameter("amount"));
	
		
		
		ShopVo vo = new ShopVo();
		vo.setName(name);
		vo.setPrice(price);
		vo.setEtc(etc);
		vo.setAmount(amount);
		
		
		
		InsertServiceI s = new InsertSerivce();
	
		s.Insert(vo); // 받아온 값을 넣어준다.
		
		
		
		RequestDispatcher d = request.getRequestDispatcher("/0429/form.jsp");
		
		d.forward(request, response); // 값을 보내고 이동 
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
