<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/styles.css" rel="stylesheet" />
<style type="text/css">
	
</style>
</head>
<body>
	<!-- 헤더 들어가는 곳 -->
	<jsp:include page="../../inc/header.jsp"/>
	<!-- 헤더 들어가는 곳 -->
	
	<section class="page-section" id="contact">
		<div class="container" align="center">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">TMI 댓글 삭제</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form
						action="TmiReplyDeletePro.co?idx=${param.idx }&pageNum=${param.pageNum}&board_idx=${param.board_idx }&nickname=${param.nickname}"
						name="deleteTmiReplyForm" method="post">
						<input type="hidden" name="idx" value="${param.idx }"> 
						<input type="hidden" name="pageNum" value="${param.pageNum }">
						<h1>댓글 삭제 하시겠습니까?</h1>
							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="nickname" id="nickname" value="${sessionScope.sNickName }" readonly="readonly">
								<label for="nickname">닉네임</label>
							</div>

						<div align="right">
							<input type="submit" class="btn btn-primary" value="삭제">
							<input type="button" class="btn btn-primary" value="돌아가기" onclick="javascript:history.back()">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 푸터 들어가는 곳 -->
	<jsp:include page="../../inc/footer.jsp"/>
	<!-- 푸터 들어가는 곳 -->
	
</body>
</html>