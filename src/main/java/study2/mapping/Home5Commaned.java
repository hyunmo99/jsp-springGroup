package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Home5Commaned implements Extention4Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 Home5Commaned객체입니다");
		request.setAttribute("msg", "이곳은 Home5Commaned객체입니다");
	}

}
