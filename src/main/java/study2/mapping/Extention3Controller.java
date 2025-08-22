package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("*.test3")
public class Extention3Controller extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String viewPage = "/WEB-INF/study2/mapping/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		if(com.equals("home3")) {
			Home3Commaned command = new Home3Commaned();
			command.execute(request, response);
			viewPage += "home3";
		}
		else if(com.equals("guest3")) {
			Guest3Commaned command = new Guest3Commaned();
			command.execute(request, response);
			viewPage += "guest3";
		}
		else if(com.equals("pds3")) {
			Pds3Commaned command = new Pds3Commaned();
			command.execute(request, response);
			viewPage += "pds3";
		}
		else if(com.equals("board3")) {
			Board3Commaned command = new Board3Commaned();
			command.execute(request, response);
			viewPage += "board3";
		}
		else {
			viewPage += "extention3";
		}
		
		viewPage += ".jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}
}
