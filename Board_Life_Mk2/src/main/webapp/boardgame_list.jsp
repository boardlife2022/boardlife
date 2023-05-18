<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="board.*" %>
<%@ page import="vo.Boardgames" %>
<%@page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="header.jsp"/>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/freeboard.css">
        <section style="width: 100%; height: 800px;">
        <jsp:useBean id="user" class="board.Freeboard_cont">
<table class="boardgamelist">
	<colgroup>
    	<col width="6%"><!--번호-->
        <col width="6%"><!--제목-->
		<col width="6%"><!--출시년도-->
		<col width="6%"><!--가격-->
		<col width="6%"><!--인원-->
		<col width="6%"><!--플레이 시간-->
        <col width="6%"><!--사용연령-->
		<col width="6%"><!--게임 난이도-->
		<col width="6%"><!--디자이너-->
		<col width="6%"><!--한국어 지원-->
		<col width="6%"><!--테마-->
        <col width="6%"><!--진행방식-->
		<col width="6%"><!--한줄평-->
		<col width="6%"><!--출판사-->
		<col width="6%"><!--이미지-->
	</colgroup>

    <thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>출시년도</th>
			<th>가격</th>
			<th>인원</th>
			<th>플레이 시간</th>
			<th>사용연령</th>
			<th>게임 난이도</th>
			<th>디자이너</th>
			<th>한국어 지원</th>
			<th>테마</th>
			<th>진행방식</th>
			<th>한줄평</th>
			<th>출판사</th>
			<th>이미지</th>
		</tr>
	
		<%
  			Boardgames bg = new Boardgames();
  			ArrayList<Boardgames> bga = new ArrayList<Boardgames>();
  			bga = user.bgselect();

  			for(int i=0;i<bga.size();i++){
		%>
		<tr class="boardgame_list">
		<td style="margin-left: 10px;"><%=i+1%></td>
   		<td><a href="#"><%= bga.get(i).getB_title()%></a></td>
   		<td><%=bga.get(i).getYearof()%></td>
   		<td><%=bga.get(i).getPrice()%></td>
   		<!-- <td><%=bga.get(i).getPnum()%></td>  -->
   		<td>1-4</td>
   		<td><%=bga.get(i).getRunning_time()%></td>
   		<td><%=bga.get(i).getAge()%></td>
   		<td><%=bga.get(i).getB_img()%></td>
   		<td><%=bga.get(i).getGame_level()%></td>
   		<td><%=bga.get(i).getDesigner()%></td>
   		<td><%=bga.get(i).getSub_lang()%></td>
   		<td><%=bga.get(i).getB_theme()%></td>
   		<td><%=bga.get(i).getProceed()%></td>
   		<td><%=bga.get(i).getB_detail()%></td>
   		<td><img src="img/<%= bga.get(i).getB_img()%>"></td>
		</tr>
   		<% }%>
</table>
		</jsp:useBean>
        </section>