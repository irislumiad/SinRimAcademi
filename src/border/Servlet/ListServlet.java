package border.Servlet;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import border.service.SelectPageService;
import border.service.SelectPageServiceI;
import border.vo.BorderVo;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		int start = Integer.parseInt(request.getParameter("start"));
		
		BorderVo v = new BorderVo();
		v.setStart(start);
		
		 SelectPageServiceI s = new SelectPageService();
		 List<BorderVo> boardList = s.select(v);
		 s.countAll();
		 
		 Request.setAtt
		 
		 RequestDispatcher dispatcher 
		 	=request.getRequestDispatcher("/0427/list.jsp");
		 dispatcher.forward(request, response);
				 
		/*
		RequestDispatcher dispatcher = request.getRequestDispatcher("/0427/index.jsp");
		//System.out.println("이건뭐얌:"+dispatcher);
		
		dispatcher.forward(request, response);
	}
	*/
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
