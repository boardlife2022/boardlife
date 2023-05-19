<%@ page import="vo.Club_PageInfo"%>
<%@ page import="vo.Offerclub"%>
<%@ page import="vo.ClubReview"%>
<%@ page import="dao.Club_Function_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>


    <jsp:include page="header.jsp"/>
    
<%
	ArrayList<Offerclub> slideClub=(ArrayList<Offerclub>)request.getAttribute("slideClub");
    ArrayList<Offerclub> Club_List=(ArrayList<Offerclub>)request.getAttribute("club_List");
    ArrayList<ClubReview> RecentlyReviews = (ArrayList<ClubReview>)request.getAttribute("RecentlyReviews");
    Club_PageInfo pageInfo = (Club_PageInfo)request.getAttribute("pageInfo");
    int listCount=pageInfo.getListCount();
    int nowPage=pageInfo.getPage();
    int maxPage=pageInfo.getMaxPage();
    int startPage=pageInfo.getStartPage();
    int endPage=pageInfo.getEndPage();
    
    String key = (String)request.getParameter("search");
    String index = (String)request.getParameter("index");
    
    if(index == null){ index = "total"; }
 
    String Bnum = null;
    %>

    <link rel="stylesheet" href="css/boardgameclub.css" type="text/css">
    <script src="js/boardgame_club_list.js"></script>
    

     <section id="club_slider">
		
		<% if(slideClub.size() > 5){ %>
        <div class="inner_slider">

            <div class="left slide-btn"><img src="img/next-left.png" alt="left"></div>
            <div class="right slide-btn"><img src="img/next-right.png" alt="right"></div>

            <ul class="sclub_wrap">

			
			<% for(int j = 1; j <= 5; j++){ %>
                <li class="sclub type<%=j%> clearfix <% if(j == 3){out.print("active");}%>">
                    <div class="off"></div>
                    <div class="sclub_cover"><img src="img/<%= slideClub.get(j).getB_img() %>" alt="<%= slideClub.get(j).getB_img() %>"></div>
                    <div class="sclub_info">

                        <p class="sclub_title"><%= slideClub.get(j).getClub_title() %></p>
                        <p class="sclub_moder">by <%=slideClub.get(j).getUser_id() %></p>
                        <p class="hashtag">
                        <span>#<%=slideClub.get(j).getClub_reps() %>회차</span>
                        <span>#<%=slideClub.get(j).getB_theme() %></span>
                        <span>#<%=slideClub.get(j).getProceed() %></span>
                        <span>#<% if(slideClub.get(j).getClub_place().equals("online")){ out.print("online"); } else {out.print("offline");} %></span>
                        </p>

                        <p class="sclub_detail"><%=slideClub.get(j).getClub_intro() %></p>

                        <a href="ClubDetail.cl?clubNum=<%=slideClub.get(j).getClub_num()%>&page=<%=nowPage%>">자세히 보기</a>

                    </div>
                </li>
                <%} // for %>
                
            </ul>

        </div>
        <%} // if %>

    </section>

    <section id="boardgame_club_list">
        
        <h3>Boardgame Club</h3>

        <div class="club_index">

            <!--검색/form태그 추가--->
            <form name="searchfrm" method="get" action="/Club_boardList.cl">
                <div class="searchBox">
                    <div class="keyword"><input type="text" name="search" placeholder="<% if(key == "" || key == null){ out.print("검색어를 입력해주세요."); } else { out.print(key); } %>"></div>
                    <button>검색</button>
                </div>
            </form>
            <ul class="index_wrap clearfix">
                <li class = <% if(index.equals("total")){ out.print("active"); } %>><a href="Club_boardList.cl">전체 클럽</a></li>
                <li class = <% if(index.equals("offline")){ out.print("active"); } %>><a href="Club_boardList.cl?index=offline&page=1">오프라인 클럽</a></li>
                <li class = <% if(index.equals("online")){ out.print("active"); } %>><a href="Club_boardList.cl?index=online&page=1">온라인 클럽</a></li>
                <li><a href="#">클럽 제안하기</a></li>
            </ul>

        </div>


        <div class="inner_club_list">

            <div class="club_wraps clearfix">
            
		<%  for(int i=0; i < Club_List.size(); i++ ){ %>
                <a href="ClubDetail.cl?clubNum=<%=Club_List.get(i).getClub_num()%>&page=<%=nowPage%>" class="club">
                <% Bnum = Club_List.get(i).getB_id(); %>
                
                    <img src="img/<%= Club_List.get(i).getB_img() %>" alt="<%= Club_List.get(i).getB_img() %>" class="boardgame">

                    <div class="club_info">
                        <p class="club_title"><%= Club_List.get(i).getClub_title() %></p>
                        <p class="club_moder">by <%= Club_List.get(i).getUser_id() %></p>
                        <p class="hashtag"><span>#<%= Club_List.get(i).getClub_reps() %>회차</span><span>#<%= Club_List.get(i).getProceed() %></span>
                        <span>
                        #<% if(Club_List.get(i).getClub_place().equals("online")){ out.print("online"); } else {out.print("offline");} %>
                        </span>
                        </p>
                        <p class="club_detail"><%= Club_List.get(i).getClub_intro() %></p>
                    </div>
                    
                    <div class="lower">
                        <div class="participate clearfix">
                            <img src="img/user.png" alt="user">
                            <p>
                            23. 04. <%=Club_List.get(i).getStart_date().substring(4)%> 
                            | <%= Club_List.get(i).getClub_day() %> 
                            | <%= Club_List.get(i).getClub_time() %>시 
                            | <% if(Club_List.get(i).getClub_place().equals("online")){ out.print("online"); } else {out.print(Club_List.get(i).getClub_place().substring(0, 2));} %>
                            | 1/<%= Club_List.get(i).getCapacity() %>명 
                            | <%= Club_List.get(i).getMembership_fee() %>원
                            </p>
                        </div>
                    </div>

                </a>
        <% }  // for문 %>

            </div>

        </div>

    </section>
    
    <% if(key == null && index.equals("total")){ %>
        <!--pagination-->
        <section class="page">
        
        <% if(nowPage<=1){}else{ %>
            <a href="Club_boardList.cl?page=<%=nowPage-1 %>" class="left">&lt;</a>
        <%} %>
        
            <ol>
            <% for(int a = startPage; a<=endPage; a++){ %>
                <li class=<% if(a == nowPage){ out.print("active");}%>><a href="Club_boardList.cl?page=<%=a%>"><%=a%></a></li>
            <%} %>
            </ol>
            
		<%if(nowPage>=maxPage){}else{ %>
            <a href="Club_boardList.cl?page=<%=nowPage+1 %>" class="right">&gt;</a>
		<%} // if else%>
        </section>
      <%} // 페이징 if문 %>

    <section id="reviews">

        <div class="review_tab">
            <p class="review_title">Recently Review</p>

            <ul class="review_wrap">

				<%for(int rr=0; rr<RecentlyReviews.size(); rr++){ %>
                <li class="review clearfix">
                    <div class="img_wrap">
                        <img src="img/user.png" alt="user">
                    </div>
                    <div class="txt_wrap">
                        <p class="nickname"><%= RecentlyReviews.get(rr).getUser_id() %></p>
                        <p class="sentence"><%= RecentlyReviews.get(rr).getClub_review_content() %></p>
                        <p class="r_date">
                        <%= RecentlyReviews.get(rr).getClub_review_title() %> 
                        / <%= RecentlyReviews.get(rr).getClub_review_date() %></p>
                        <p class="ratingStar"><% for(int ra=0; ra<RecentlyReviews.get(rr).getClub_review_rating(); ra++){out.print("⭐");} %></p>
                    </div>
                </li>
                <%} %>


            </ul>

        </div>

    </section>

 <jsp:include page="footer.jsp"/>
