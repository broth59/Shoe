package com.controller.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.SessionCheckInterface;


@WebServlet("/OrderInfoServlet")
public class OrderInfoServlet extends HttpServlet implements SessionCheckInterface{
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "orderinfo.jsp";
		HttpSession session = request.getSession();
		sessionCheck(session, request, response, url, REDIRECT,()->{
			String day = request.getParameter("day");
			if(day!=null) {
				System.out.println(day);
			}
			
		});
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
