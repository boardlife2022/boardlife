// 진행만 하는 역할을 수행함

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.Info_BoardListAction;
import action.Info_CustomAction;
import vo.ActionForward;

@WebServlet("*.in")
public class Info_BoardFrontController extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
		
		if(command.equals("/best50.in")){
			action = new Info_BoardListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				System.out.println("베스트50.in안됨");
			}
			
		}
		if(command.equals("/boardgameinfo_custom.in")){
			action = new Info_CustomAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				System.out.println("커스텀.in안됨");
			}
		}
		
		
		if(forward != null){
			
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
			
		}
	} // doProcess
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}  	// doGet method

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}   // doPost method
	
} // class BoardFrontController
	
