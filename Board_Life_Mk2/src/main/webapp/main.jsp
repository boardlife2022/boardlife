<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:include page="header.jsp"/>

        <section style="width: 100%; height: 800px; padding-top: 120px;">
            <center><b>
            <input style="font-size: 20pt" type="button" value="보드게임확인" onclick="location.href='boardgame_list.jsp'"><br>
            <input style="font-size: 20pt" type="button" value="보드게임등록" onclick="location.href='boardgame_input.jsp'">
            </b></center>
        </section>


<jsp:include page="footer.jsp"/>