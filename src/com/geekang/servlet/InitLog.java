package com.geekang.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.geekang.init.Init;

/**
 * Servlet implementation class InitLog
 */
@WebServlet("/upload")
public class InitLog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InitLog() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//final ServletContext application = this.getServletContext();
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try {
		       if (request.getContentLength() > 188) {
		           InputStream in = request.getInputStream();
		           //String path = application.getRealPath(System.getProperty("file.separator")) + "WEB-INF" + System.getProperty("file.separator") + "logfiles";
		           
		           String path = "F:/test";
		           System.out.println(path);
		           File f = new File(path, "test.txt");
		           FileOutputStream o = new FileOutputStream(f);
		           byte b[] = new byte[1024];
		           int n;
		           while ((n = in.read(b)) != -1) {
		               o.write(b, 0, n);
		           }
		           o.close();
		           in.close();
//		           out.print(request.getContentLength() + "\r\n");
//		           out.print("File upload success!");
		           } else {
		              out.print("No file!");
		           }
		       } catch (IOException e) {
//		           out.print("upload error.");
		           e.printStackTrace();
		       }
		
		List<String[]> list = new ArrayList<String[]>();
		list = Init.InitLogFile("F:/test/u_ex140929.log");
		request.setAttribute("logList", list);
		
//		out.flush();
//		out.close();
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request, response);
	}

}
