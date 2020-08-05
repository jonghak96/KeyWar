<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL 선언부 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h3>seoulace VS busanzzang 6월 23일 (금) 오후 9시 강남 챌린지복싱장 </h3>

<div align="right">
	<c:choose>
		<c:when test="${empty loginId}"><a href="login/login.jsp"><button>로그인</button></a> | <a href="http://localhost:8080/KeyWar/member/signUpSelect.jsp"><button>회원가입</button></a></c:when>
		<c:otherwise>
			${loginId }님 안녕하세요 | <a href="http://localhost:8080/KeyWar/login/logout.jsp">로그아웃</a><br>
			<a href="../KeyWar/match/matchRecord.jsp">매칭 현황 보러가기</a>		
		</c:otherwise>
	</c:choose>	
</div>