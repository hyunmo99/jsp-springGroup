package study.j0806;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/j0806/T08")
public class T08 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String ageString= request.getParameter("age");
		String gender = request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobbys");
		String job = request.getParameter("job");
		String[] mountains = request.getParameterValues("mountains");
		String content = request.getParameter("content");
		String fileName = request.getParameter("fileName");
		int age=0;
		
		//null체크처리하기
		if((request.getParameter("name")==null) || (request.getParameter("name").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		 }
		
		if((request.getParameter("age")==null) || (request.getParameter("age").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		}	
		if((request.getParameter("gender")==null) || (request.getParameter("gender").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		}
		if((request.getParameterValues("hobbys")==null) || (request.getParameterValues("hobbys").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		}
		
		if((request.getParameter("job")==null) || (request.getParameter("job").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		}
		if((request.getParameterValues("mountains")==null) || (request.getParameterValues("mountains").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		}
		if((request.getParameter("content")==null) || (request.getParameter("content").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		} 
		if((request.getParameter("fileName")==null) || (request.getParameter("fileName").equals(""))) {
			response.sendRedirect(request.getContextPath()+"/study/0806/t08.jsp?flag=no");
			return;
		} 
		//배열로 넘어오는 자료의 편집
		//취미
		String hobby ="";
		if(hobbys != null) {
			for(String h : hobbys) {
				hobby += h+"/";
			}
			hobby = hobby.substring(0, hobby.length()-1);
		}
		//산
		String mountain ="";
		if(hobbys != null) {
			for(String m : mountains) {
				mountain += m+"/";
			}
			mountain = mountain.substring(0, mountain.length()-1);
		}
		age = Integer.parseInt(ageString);
		content = content.replace("\n", "<br/>");
		
		//정상적으로 넘어왔는지를 서버에세 체크(찍어본다.)
		System.out.println("성명 : " + name);
		System.out.println("나이 : " + age);
		System.out.println("성별 : " + gender);
		System.out.println("취미 : " + hobby);
		System.out.println("직업 : " + job);
		System.out.println("산 : " + mountain);
		System.out.println("자기소개 : " + content);
		System.out.println("파일명 : " + fileName);
		
		//자기소개서에 enter를 누르면  -> \n을 만나면 <br>태그로 치환 replace로 치환
		//서버에 정상적으로 처리된 자료(찍어본 자료)를 View(JSP)페이지로 전송시켜서 예쁘게 출력시켜준다.
		
		response.sendRedirect(request.getContextPath()+"/study/0806/t08_member.jsp?name="+URLEncoder.encode(name)+"&age="+age+"&gender="+URLEncoder.encode(gender)+"&hobby="+URLEncoder.encode(hobby)+"&job="+URLEncoder.encode(job)+"&mountain="+URLEncoder.encode(mountain)+"&content="+URLEncoder.encode(content)+"&fileName="+URLEncoder.encode(fileName));
		
	}

}
