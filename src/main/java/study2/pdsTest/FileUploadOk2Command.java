package study2.pdsTest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.CommonInterface;

public class FileUploadOk2Command implements CommonInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/pdsTest");
		int MaxSize = 1024*1024*10; //서버에 저장시킬 최대 파일 용량을 10MByte로 제한
		String encoding = "UTF-8";
		
		//파일 업로드 처리(객체가 생W성됨과 동시에 파일이 업로드 된다.
		//MultipartRequest multipartRequest = new MultipartRequest(request, realPath, MaxSize, encoding); 
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, MaxSize, encoding, new  DefaultFileRenamePolicy()); 
		
		String originalFileName1 = multipartRequest.getOriginalFileName("fName1");
		String filesystemName1 = multipartRequest.getFilesystemName("fName1");
		String originalFileName2 = multipartRequest.getOriginalFileName("fName2");
		String filesystemName2 = multipartRequest.getFilesystemName("fName2");
		String originalFileName3 = multipartRequest.getOriginalFileName("fName3");
		String filesystemName3 = multipartRequest.getFilesystemName("fName3");
		
		String part = multipartRequest.getParameter("part");
		
		System.out.println("원본 파일명1 : " + originalFileName1);
		System.out.println("원본 파일명2 : " + originalFileName2);
		System.out.println("원본 파일명3 : " + originalFileName3);
		System.out.println("서버파일 저장 파일명1 : " + filesystemName1);
		System.out.println("서버파일 저장 파일명2 : " + filesystemName2);
		System.out.println("서버파일 저장 파일명3 : " + filesystemName3);
		System.out.println("서버파일 저장 경로명 : " + realPath);
		
		//BackEnd 파일 체크
		if(originalFileName1 != null && !originalFileName1.equals("")) request.setAttribute("message", "파일 전송 완료!!!1");
		else if(originalFileName2 != null && !originalFileName2.equals("")) request.setAttribute("message", "파일 전송 완료!!!2");
		else if(originalFileName3 != null && !originalFileName3.equals("")) request.setAttribute("message", "파일 전송 완료!!!3");
		else {
			request.setAttribute("message", "파일 전송 실패!!!");
		}
		
		request.setAttribute("url", "FileUpload2.st");
		

	}

}
