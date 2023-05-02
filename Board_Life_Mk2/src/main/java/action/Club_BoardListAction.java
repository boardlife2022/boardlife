package action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Club_BoardListService;
import vo.ActionForward;
import vo.Club_PageInfo;
import vo.Offerclub;

 public class Club_BoardListAction implements Action {
	 
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
		ArrayList<Offerclub> slideClubList=new ArrayList<Offerclub>();
		ArrayList<Offerclub> club_List=new ArrayList<Offerclub>();
		
	  	int page=1;
		int limit=12;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}

		
		Club_BoardListService Club_boardListService = new Club_BoardListService();
		
		slideClubList = Club_boardListService.slideClubList();
		// slideClubList는 별개의 메서드를 생성함.
		
		String key = request.getParameter("search"); // 검색어 값을 받아옴
		
		if(key != null) {
			// 검색어가 있는지 확인
			// 검색어가 존재할 경우
			club_List = Club_boardListService.searchclubList(page, limit, key);
			//System.out.println("hold on");
			
		} else {
			//검색어가 존재하지 않을 경우
			club_List = Club_boardListService.getclubList(page,limit);
		}
		
	    String index = (String)request.getParameter("index");
	    
	    if(index == null){ index = "total"; }
	    
	    if(index.equals("online") || index.equals("offline")) { 
	    	club_List = Club_boardListService.onOffClubList(page, limit, index);
	    }
		
		int listCount=Club_boardListService.getListCount();
		
		
   		int maxPage=(int)((double)listCount/limit+0.95); 
   		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    int endPage = startPage+10-1;

   		if (endPage> maxPage) endPage= maxPage;

   		Club_PageInfo pageInfo = new Club_PageInfo();
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		
		request.setAttribute("slideClub", slideClubList);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("club_List", club_List);
		ActionForward forward= new ActionForward();
   		forward.setPath("/boardgame_club_list.jsp");
   		return forward;
   		
	 }
	 
 }