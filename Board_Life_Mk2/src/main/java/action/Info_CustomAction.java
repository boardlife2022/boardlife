package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

public class Info_CustomAction implements Action {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		ActionForward forward= new ActionForward();
		forward.setPath("/boardgameinfo_custom.jsp");
		return forward;
	}
}