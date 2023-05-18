// 진행만 하는 역할을 수행함

package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ClubReviewAction;
import action.Club_BoardListAction;
import action.Club_DetailAction;
import vo.ActionForward;

@WebServlet("*.cl") 
// 앞에 뭐가들어오든, .bo로 끝나는 모든 url은 controller를 타고들어온다는 의미
// db작업 진행방향은 action으로 향하게 됨
// dao를 만들어서 svc단에서 데이터처리를 함
public class Club_BoardFrontController extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null;
		Action action=null;
		
		if(command.equals("/Club_boardList.cl")){
			action = new Club_BoardListAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/ClubDetail.cl")) {
			action = new Club_DetailAction();
			// ClubAction 객체 생성하여 서블릿 페이지 실행
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		} else if(command.equals("/ClubReviewWrite.cl")) {
			action = new ClubReviewAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
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
	
