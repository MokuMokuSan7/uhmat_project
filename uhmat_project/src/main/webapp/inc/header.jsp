<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" type="text/css">
<script src="https://kit.fontawesome.com/5382a0d7e0.js" crossorigin="anonymous"></script>
<script src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function confirmLogout() {
		if(confirm("로그아웃 하시겠습니까?")) { // 확인 : true, 취소 : false 리턴됨
			// MemberLogout.me 포워딩
			location.href = "MemberLogout.me";
		}
	}
</script> 
</head>
<body>
<div id="headerContainer">
	<header id="uhmatHeader">
		<!-- 로고 들어가는 곳 시작 -->
    	<div class="mainLogo">
    		<a href="/uhmat_project/"><img src="image/uhmatMainLogo.png"></a>
    	</div>
		<!-- 로고 들어가는 곳 끝 -->
		
		<!-- 로그인 및 회원가입 부분 시작 -->
		<div class="loginPart">
		<c:choose>
			<c:when test="${empty sessionScope.sNickName}">
				<a href="MemberLogin.me">로그인</a>&nbsp; <a href="MemberJoinForm.me">회원가입</a>
			</c:when>
			<c:otherwise>
				<%-- 하이퍼링크에 자바스크립트 함수 연결 시 href 속성에 아무 경로도 지정하지 않는 방법 --%>
				<a href="MemberDetailForm.me?nickName=${sessionScope.sNickName }">${sessionScope.sNickName }
					님 </a>&nbsp; <a href="MemberLogout.me">로그아웃</a>
				<%-- 세션 아이디가 "admin" 일 때만 관리자페이지 링크("AdminMain.me") 표시 --%>
				<c:if test="${sessionScope.sNickName eq 'admin'}"> &nbsp; <a
						href="AdminMain.ad">관리자페이지</a>
				</c:if>
			</c:otherwise>
		</c:choose>
		</div>
		<!-- 로그인 및 회원가입 부분 끝 -->
		
	<!-- 탑 메뉴 부분 시작 -->
	<div class="topMenu">
    <ul>
    	<li>
    	<div class="dropdown">
    		<a href="CompanyDetail.cp">회사소개</a>
    			<div class="dropdownContent">
				<ul>
					<li><div onclick="location.href='CompanyDetail.cp'" style="cursor:pointer;">회사 소개</div></li>
					<li><div onclick="location.href='UhmatDetail.cp'" style="cursor:pointer;">어맛 소개</div></li>
					<li><div onclick="location.href='DeveloperDetail.cp'" style="cursor:pointer;">개발자 소개</div></li>
					<li><div onclick="location.href='Policy.cp'" style="cursor:pointer;">이용약관</div></li>
				</ul>	
				</div>
  	  	</div>
  	  	</li>
  	  	
  	  	
  	  	<!-- 어맛리뷰 카테고리 항목들 모자르면 추가하시면 됩니다 -->
  	  	<!-- 카테고리 항목들 주소 추가하시면 됩니다 -->
  	  	<li>
  	  	<div class="dropdown">
    		<a href="ReviewList.re">어맛리뷰</a>
    			<div class="dropdownContent">
				<ul>
					<li><div onclick="location.href='ReviewList.re'" style="cursor:pointer;">어맛리뷰</div></li>
					<li><div onclick="location.href='restaurantList.re'" style="cursor:pointer;">식당 리스트</div></li>
					<li><div onclick="location.href='mapForm.re'" style="cursor:pointer;">지도로 찾기</div></li>
				</ul>	
				</div>
  	  	</div>
  	  	</li>
  	  	
  	  	<!-- 커뮤니티 각 게시판 주소 추가하시면 됩니다 -->
  	  	<li>
  	  	<div class="dropdown">
    		<a href="MateList.co">커뮤니티</a>
    			<div class="dropdownContent">
				<ul>
					<li><div onclick="location.href='MateList.co'" style="cursor:pointer;">어맛 메이트</div></li>
					<li><div onclick="location.href='TmiList.co'" style="cursor:pointer;">어맛인들의 tmi</div></li>
					<li><div onclick="location.href='RecipeList.co'" style="cursor:pointer;">어맛 레시피</div></li>
				</ul>	
				</div>
  	  	</div>
  	  	</li>
  	  	
  	  	<!-- 이벤트 게시판 주소 추가하시면 됩니다 -->
  	  	<li>
  	  	<div class="dropdown">
    		<a href="./event/NewFile.jsp">이벤트</a>
    			<div class="dropdownContent">
				<ul>
					<li><div onclick="" style="cursor:pointer;">어맛 룰렛</div></li>
				</ul>	
				</div>
  	  	</div>
  	  	</li>	
  	  	
  	  	<!-- 고객센터 주소 추가하시면 됩니다 -->
  	  	<li>
  	  	<div class="dropdown">
    		<a href="ServiceCenterMain.sc">고객센터</a>
    			<div class="dropdownContent">
				<ul>
					<li><div onclick="location.href='NoticeList.sc'" style="cursor:pointer;">공지사항</div></li>
					<li><div onclick="location.href='FAQList.sc'" style="cursor:pointer;">FAQ</div></li>
				</ul>	
				</div>
  	  	</div>
  	  	</li> 
	  		
  	</ul>
    </div>
    
    <div class="headerLine">
    	
    </div>
    	
	<!-- 검색 창 부분 시작 -->
	<div class="searchContainer">
		<div class="row">
		<!-- 검색 버튼 눌렀을 때 mainController 로 통해 uhmatSearch 페이지로 가게끔 구현해야함 -->
			<form method="post" name="search" action="UhmatSearch.sch">
				<table class="pullRight">
					<tr>
						<td>
							<i class="fa-solid fa-magnifying-glass" style="font-size: 1.1em"></i>
							<input class="searchControl" type="search" id="searchControl"
								placeholder="검색할 음식명이나 음식점명" name="search" value="" maxlength="100" autocomplete="off">
						</td>
						<td>
							<button id="searchBtn" type="submit" title="검색"
							    class="submitBtn">
								<span class="blind">검색</span>
								<span class="searchIconSubmit"></span>
							</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<!-- 검색 창 부분 끝 -->
    
   	</header>
	<!-- 탑 메뉴 부분 끝 -->
	
	
	
</div>
</body>
</html>   