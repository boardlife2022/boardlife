<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@page import="vo.Notice"%>
<%@page import="board.Notice_cont"%>
<%@page import="java.util.ArrayList"%>

 <jsp:include page="header.jsp"/>
 <link rel="stylesheet" href="css/notice.css?ver=1" type="text/css">

	<section>
        <h2>공지사항 <span>Notice</span></h2>

        <!--검색/form태그 추가--->
        <form name="searchfrm" method="get" action="notice.jsp">
            <div class="searchBox">
                <div class="keyword"><input type="text" name="search" placeholder="검색어를 입력해 주세요."></div>
                <button>검색</button>
            </div>
        </form>

        <!--table-->
        <div class="noticeBox">
            <table>
                <colgroup>
                    <col width="7%">
                    <col width="48%">
                    <col width="20%">
                    <col width="15%">
                </colgroup>
                
     <jsp:useBean id="con" class="board.Notice_cont">
	<!--  class = "pakeageName.className."  -->
	<!-- 객체생성문구와 같은 선언문이다.  -->
	<!-- Control con = new Control(); 이것과 같은 의미의 태그이다. -->
 
	<%
	// 검색어가 있는지 확인
	String keyword = request.getParameter("search");
	
	Notice ob = new Notice();
	ArrayList<Notice> notice_list = new ArrayList<Notice>(); 
	
	if(keyword == null){
	notice_list = con.select();
	} else {
	notice_list = con.search(keyword);
	}
	%>

                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일자</th>
                    </tr>
                </thead>

                <tbody>
                
                <%
                
                // 한 페이지 안에서 등장할 최대의 게시글 숫자
                int max;
                
                // 게시글 숫자가 제한(15page)보다 더 많을 경우
                if(notice_list.size() < 15){
                	max = notice_list.size();
                } else {
                	max = 15;
                }
                
                
                %>
                
				<% for(int i = 0; i < notice_list.size(); i++) {%>
                    <tr>
                        <td><%out.println(notice_list.get(i).getPost_id());%></td>
                        <td class="title">
                            <a href="notice_view.jsp?post_id=<%out.println(notice_list.get(i).getPost_id());%>"><%out.println(notice_list.get(i).getPost_title());%></a>
                        </td>
                        <td> <% out.println(notice_list.get(i).getUser_id()); %> </td>
                        <td> <% out.println(notice_list.get(i).getPost_date().substring(0, 16)); %> </td>
                    </tr>
     			<%  } // for %>
                </tbody>
                

                
                </jsp:useBean>
                
            </table>


            <!--write Btn-->
            
            
            <% 
            
        	// login check
        	String login_check = (String)session.getAttribute("LOGIN"); 
        	boolean check = false;
        	if(login_check != null){
        		check = true;
        	}
            
            if(check){ %>
            <div class="writeBtn"><button onclick="location.href='notice_input.jsp'; return false;">글쓰기</button></div>
			<% } %>
        </div>



        <!--pagination-->
        <div class="page">

            <a href="#" class="left">&lt;</a>

            <ol>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
            </ol>

            <a href="#" class="right">&gt;</a>

        </div>

    </section>
  
<jsp:include page="footer.jsp"/>