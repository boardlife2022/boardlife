<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="board.*" %>
<%@ page import="vo.Boardgames" %>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet" type="text/css" href="css/boardgameinfo_detail.css">


<jsp:include page="header_gameinfo2.jsp"/>
		
        <section style="width: 100%; background-color: #333;">
        	<div style="text-align: center; font-size: 20pt; width: 1280px;margin: 0 auto;">
        		<div>
        		<jsp:useBean id="user" class="board.Freeboard_cont">
       			 <table style="color: white;">
       			 <colgroup>
    	<col width="5%"><!--번호-->
    	<col width="10%"><!--제목-->
        <col width="10%"><!--출시년도-->
        <col width="10%"><!--인원수-->
	 	<col width="10%"><!--이용시간-->
        <col width="10%"><!-- -->
	</colgroup>
		<%
  			Boardgames bg = new Boardgames();
  			ArrayList<Boardgames> bga = new ArrayList<Boardgames>();
  			bga = user.bgselect();

  			for(int i=0;i<bga.size();i++){
		%>
		<tr class="boardgame_list">
		<td style="margin-left: 10px;" ><%=i+1%></td>
   		<td><a href="#"><%= bga.get(i).getB_title()%></a></td>
   		<td><%=bga.get(i).getYearof()%></td>
   		<td><%=bga.get(i).getPrice()%></td>
   		<!-- <td><%=bga.get(i).getPnum()%></td>  -->
   		<td>1-4</td>
   		<td><%=bga.get(i).getRunning_time()%></td>
   		<td><%=bga.get(i).getDesigner()%></td>
   		<td><img src="img/<%= bga.get(i).getB_img()%>"></td>
		</tr>
   		<% }%>
				 </table>
				</div>

			</div>
			</jsp:useBean>
		</section>
<jsp:include page="footer.jsp"/>