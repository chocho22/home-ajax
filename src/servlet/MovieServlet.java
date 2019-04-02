package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MovieService;
import service.impl.MovieServiceImpl;

@WebServlet("/MovieServlet")
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MovieService ms = new MovieServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		int idx = uri.lastIndexOf("/");
		if(idx==0) {
			throw new ServletException("원하는 서비스가 부정확합니다.");
		} else {
			String cmd = uri.substring(idx+1);
			if("insert".equals(cmd)) {
				HttpSession hs = request.getSession();
				if(hs.getAttribute("user")==null) {
					request.setAttribute("msg", "로그인 하세요.");;
					request.setAttribute("url", "/");
					RequestDispatcher rd = request.getRequestDispatcher("views/msg/result");
					rd.forward(request, response);
					return;
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		int idx = uri.lastIndexOf("/");
		if (idx == 0) {
			throw new ServletException("원하는 서비스가 부정확합니다.");
		} else {
			String cmd = uri.substring(idx + 1);
			if ("insert".equals(cmd)) {
				Map<String, String> movie = new HashMap<>();
				movie.put("miName", request.getParameter("mi_name"));
				movie.put("miYear", request.getParameter("mi_year"));
				movie.put("miNational", request.getParameter("mi_national"));
				movie.put("miVendor", request.getParameter("mi_vendor"));
				movie.put("miDirector", request.getParameter("mi_director"));
				request.setAttribute("msg", "등록 실패");
				if (ms.insertMovie(movie) == 1) {
					request.setAttribute("msg", "등록 완료");
				}
				request.setAttribute("url", "/movie/list");
				RequestDispatcher rd = request.getRequestDispatcher("/views/msg/result");
				rd.forward(request, response);
			}
		}
		doGet(request,response);
	}
}
