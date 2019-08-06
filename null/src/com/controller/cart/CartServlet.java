package com.controller.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.service.CartService;
import com.util.LoginIndicator;
import com.util.MapParamInputer;
import com.util.QueryUtil;


@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션 처리
		String userid = LoginIndicator.check(request, response);
		if(userid==null) {
			response.sendRedirect("/null/LoginUIServlet");
		}
		//유틸 셋팅
		QueryUtil util = new QueryUtil();
		//with model
		CartService cser = new CartService();
		List<HashMap<String, Object>> cart_list = cser.selectCartList(MapParamInputer.set("USERID",userid));
		HashMap<String, Object> pcode_mapped = util.bind(cart_list, "PCODE");
		
		//with jsp
		RequestDispatcher dis =request.getRequestDispatcher("/Content/cart/cart.jsp");
			//저장
			request.setAttribute("CART_LIST", cart_list);
			request.setAttribute("PCODE_MAPPED", pcode_mapped);
			//사출
			dis.forward(request, response);
			
		
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
