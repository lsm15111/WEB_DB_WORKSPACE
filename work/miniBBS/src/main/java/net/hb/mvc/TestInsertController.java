package net.hb.mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext; //application����
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest ;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.hb.test.TestSQL;


@WebServlet("/testInsert.do") 
public class TestInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	
	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
		System.out.println("\nTestInsertController.java doGet�޼ҵ� 12:16 1:45 ");
	}//end

	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
		System.out.println("\nTestInsertController.java doPost�޼ҵ� 12:16 1:45 ");
	}//end
	
	public  void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		 //TestInsertController�������� �ܵ�������� �����ϸ� �����߻�
		 //jsp���� 533������ 32����������   	 
		 ServletContext  ct  = this.getServletContext(); //application��� ct������
		 String path  = ct.getRealPath("storage");  
		 System.out.println("���������� " + path);
		 
		 int size = 1024*1024*7; 
		 MultipartRequest mr = new MultipartRequest(request,path,size,"UTF-8");
		
		  //request��� mr��ü������ ����
	    String a = mr.getParameter("title");
	    int b = Integer.parseInt(mr.getParameter("pay"));
	    String c = mr.getParameter("gender");
	    String d= mr.getFilesystemName("file1"); 
	    
	    System.out.println("TestInsertContrller.java �Ѿ������ = "+ a);
	    System.out.println("TestInsertContrller.java �Ѿ�±޿� = "+ b);
	    System.out.println("TestInsertContrller.java �Ѿ�¼��� = "+ c);
	    System.out.println("TestInsertContrller.java �Ѿ�±׸� = "+ d);
	    
	    TestSQL ts = new TestSQL();
	    ts.dbInsert(a, b, c, d);
	    response.sendRedirect("testList.jsp");
	    
		out.println("<hr><h2>");
		out.println("<a href='testList.jsp'>[testList]</a>");
		out.println("<a href='testWrite.jsp'>[test���]</a>");
		out.println("<a href='#'>[�α���]</a>");
		out.println("</h2>");
	}//end

}//TestInsertController class END




