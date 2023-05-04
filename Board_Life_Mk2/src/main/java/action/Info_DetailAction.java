package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Info_DetailService;
import vo.ActionForward;
import vo.Boardgames2;

public class Info_DetailAction implements Action {
	
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
	   	
		int bid=Integer.parseInt(request.getParameter("bid"));
		String page = request.getParameter("page");
		Info_DetailService infodetailsvc = new Info_DetailService();
		Boardgames2 article = infodetailsvc.getArticle(bid);
		ActionForward forward = new ActionForward();
		request.setAttribute("page", page);
	   	request.setAttribute("article", article);
   		forward.setPath("/boardgameinfo_detail.jsp");
   		return forward;

	 }
}
