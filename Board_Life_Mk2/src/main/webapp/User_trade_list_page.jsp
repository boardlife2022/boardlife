<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.User_trade_cont" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" type="text/css" href="css/User_trade_list_page.css">

<jsp:include page="header.jsp"/>

<%
String login = (String)session.getAttribute("LOGIN"); 
 boolean member = false;
 String id = "";
 String name = "";

 if(login != null){
	 id = (String) session.getAttribute("ID");
	 name = (String) session.getAttribute("NAME");
	 member = true;
 }
%>




<section>
<h2>중고장터</h2>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form name="searchfrm">
	<div class="community-menu">
		<div class="board-title-wrapper">
			<div class="inner-community-left">
				<div class="board-title">
					<h2>중고마켓<span>Second Hand Market</span></h2>
				</div>
					<div class="dropdown">
						<select name="tr_category" id="">
							<option value="전체">전체</option>
							<option value="판매">판매</option>
							<option value="구매">구매</option>
							<option value="교환">교환</option>
							<option value="나눔">나눔</option>							
						</select>
					</div>
	 		</div>
			<div class="inner-community-right">
				<div class="searchline">

					<input type="text" name="search" placeholder="상품을 검색해주세요.">
					<button>검색</button>
				</div>
				<div><a href = "User_trade_post_page.jsp"><input type="button" value="글쓰기"></a></div>
			</div>
	 	</div>
	</div>	
</form>


		<tbody>
			<tr>
		

<jsp:useBean id="user" class="board.User_trade_cont">
<%
	ArrayList<User_trade> arru = new ArrayList<User_trade>();
	arru = user.us();

	for(int i=0 ; i<arru.size() ; i++)	{		
		%>
			
		<div class="community-list">
			<div class="post-left">
				<div class="post-num"><%=arru.get(i).getTrpost_num()%></div>
					<div class="post-topbottom">
						<div class="post-top">
						
						
						<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
						<!-- 전체 / 구매 / 판매 / 나눔 / 교환 -->
							<div class="post-category">			
								<%
   								String g = arru.get(i).getTr_category();
   								switch(g){
   								case "전체":
   									out.println("<p class='all'>전체</p>");
   								break;
   								case "구매":
   									out.println("<p class='buy'>구매</p>");
   								break;
   								case "판매":
   									out.println("<p class='sell'>판매</p>");
   								break;
   								case "나눔":
   									out.println("<p class='share'>나눔</p>");
   								break;
   								case "교환":
   									out.println("<p class='exchange'>교환</p>");
   								break;
   								}
   								%>
						</div>
						
											
							<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
							<div class="post-title"><a href="User_trade_list_view_page.jsp?Trpost_num=<%=arru.get(i).getTrpost_num()%>"><%=arru.get(i).getTr_title()%></a></div>
						</div>
						<div class="post-bottom">
							<div class="post-writer"><%=arru.get(i).getUser_id() %></div>
							<div class="post-hits">&#128064;</div>
						</div>
					</div>
			</div>	
			
			<div class="post-middle">
				<div class="post-price"><%=arru.get(i).getTr_price() %>&nbsp;원</div>
			</div>
			<div class="post-right">
				
				<div class="post-date"><%=arru.get(i).getTr_date() %></div>
			</div>
		</div>

<!--  	<td><input type="button" onclick="location.href='User_trade_View2.jsp?trpost_num=<%=arru.get(i).getTrpost_num()%>';" value="삭제">
	<td><input type="button" onclick="location.href='User_trade_View5.jsp?trpost_num=<%=arru.get(i).getTrpost_num()%>';" value="수정"> -->
	<%
	


//	out.println("<td>"+arru.get(i).getTr_content()+"");
	} 
	%> 
</jsp:useBean>

			</tr>
		</tbody>
		
	</table>

	
	
	
<!-- <div class="writeBtn"><a href = "User_trade_View3.jsp"><input type="button" value="게시글 작성"></a></div> -->

</body>
</html>

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

<!-- out.println("<td><input type='button' onclick='location.href='User_trade_View2.jsp?trpost_num='arru.get(i).getTrpost_num()''' value='삭제'>");
-->