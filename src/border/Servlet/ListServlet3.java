package border.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import border.dao.SelectPageCh;
import border.dao.SelectPageChI;
import border.vo.BorderVo;
import border.vo.CountVo;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/ListServlet3")
public class ListServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");

		
		
		 String start = request.getParameter("start"); // 파리미터값은 문자로 넘어 오는가?  //22 스타트 값을 받아주고 
		 //System.out.println(start);  1
		 int startIdx;

		 //2
		 if (start == null){  //33 값을 조건 처리 한다. 
			 startIdx = 0;
			 
		 }else{
			 startIdx =Integer.parseInt(request.getParameter("start")) ;
		 }

		 String ch1 = request.getParameter("ch1");
		 String ch2 = request.getParameter("ch2");
		 
		 
		 
		 BorderVo v = new BorderVo();
		 v.setStart(startIdx); //44 int startIdx; 의 값이 들어간다. 
		 v.setCh1(ch1);
		 v.setCh2(ch2);
		 
		  SelectPageChI s = new SelectPageCh();
		  List<BorderVo> li = s.select(v);  // 55 스타트idx에서 들어간 v 값을 리스트에 넣어준다. 
		  
		  int tc = s.countAll(v);
		  int totalPage = (int)Math.round(tc/10.0); 
		  int nowPage = (startIdx / 10)+1;
		  
		  CountVo c = new CountVo();
		  c.setTc(tc);
		  c.setTotalPage(totalPage);
		  c.setNowPage(nowPage);
		
		
		  request.setAttribute("boardList", li); // 오브젝트 값 통으로 받아 올 수 있다.  
		  request.setAttribute("board", v); // 오브젝트 값 통으로 받아 올 수 있다.  
		  
		  
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/0427/List3_jstl.jsp");
		//System.out.println("이건뭐얌:"+dispatcher);
		
		dispatcher.forward(request, response);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
