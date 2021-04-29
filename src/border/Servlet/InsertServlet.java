package border.Servlet;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import border.dao.Insert;
import border.service.InsertService;
import border.service.InsertServiceI;
import border.service.SelectPageServiceI;
import border.service.SelectService;
import border.service.SelectServiceI;
import border.vo.BorderVo;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		SelectServiceI s = new SelectService();
		 List<BorderVo> li = s.select();
		 request.setAttribute("boardList", li);

		 RequestDispatcher dispatcher
		 	=request.getRequestDispatcher("/0427/list_jst1.jsp");
		 dispatcher.forward(request, response);
				 
		
		/*
		BorderVo v = new BorderVo();
		InsertServiceI i = new InsertService();
		i.insert(v);
		//response.sendRedirect("index.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/0427/index.jsp");
		//System.out.println("이건뭐얌:"+dispatcher);
		
		dispatcher.forward(request, response);
		*/
	}	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
