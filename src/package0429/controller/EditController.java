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
import package0429.service.EditService;
import package0429.service.EditServiceI;


/**
 * Servlet implementation class EditController
 */
@WebServlet("/EditController") // 경로를 알려주는 부분 !
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int idx= Integer.parseInt(request.getParameter("idx")); // 값을 받아온다 .  // 값을 앵커로 넘겨주면 문자로 변환한다. 
		
		ShopVo vo = new ShopVo();
		vo.setIdx(idx);
		
		
		
		EditServiceI e = new EditService();
		List<ShopVo> edit = e.Edit(vo);
		request.setAttribute("edit", edit);
							//이름      매개변수 담는부분
		
		RequestDispatcher ed = request.getRequestDispatcher("/0429/edit.jsp");
		ed.forward(request, response);
		
		
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
