<%@page import="java.util.ArrayList"%>
<%@ page language="java" 
    contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- c:forEach 태그
=> 반복문 자바 코드를 생성한다.
=> 주요 속성
items : 배열 또는 collection 타입의 객체, java.util.Iterator 구현제
             java.util.Enumaration 구현체, java.util.Map 구현체
             콤마(,)로 구분된 문자열
var : 목록에서 한 개 꺼낸 객체를 가리키는 변수명
begin : 시작 인덱스
end : 끝 인덱스
--%>

<%-- 배열 반복하기 (시작과 끝 지정하지 않으면 전부다 출력)--%>
<%
pageContext.setAttribute("names", new String[]{"홍길동","임꺽정","유관순","안중근","윤봉길"});
%>
<c:forEach var="name" items="${names}">
${name},
</c:forEach>
--------------------------------------------------------------
<c:forEach var="name" items="${names}" begin="2">
${name},
</c:forEach>
--------------------------------------------------------------
<c:forEach var="name" items="${names}" end="2">
${name},
</c:forEach>
--------------------------------------------------------------
<c:forEach var="name" items="${names}" begin="1" end="3">
${name},
</c:forEach>



