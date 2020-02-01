package kiview.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import kiview.biz.biz;
import kiview.dao.MemberDao;
import kiview.vo.member.MemberVo;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Controller() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String command = request.getParameter("command");
		
		biz biz = new biz();
		
		
		if(command.equals("login")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			MemberVo vo = biz.selectOne(id, pwd);
			
			if(vo.getId()!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("session", vo);
				
				response.sendRedirect("index.jsp");
				jsResponse("로그인 성공","index.jsp",response);
			
			} else {
				jsResponse("로그인 실패","index.jsp",response);
			}
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	protected void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
	protected void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
		String s = "<script type='text/javascript'>"+"alert('"+msg+"')"+"location.href='"+url+"'"+"</script>";
		PrintWriter out = response.getWriter();
		out.print(s);
	}

}
