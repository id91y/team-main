<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/travel" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file ="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>맛집 리스트</title>
</head>
<body>
<bd:navbar></bd:navbar>
<div class="container">
	<h1>맛집 리스트 작성</h1>
	
	<div class="row">
		<div class=" col-12">
			<form action="${appRoot }/eatboard/register" method="post" enctype="multipart/form-data"> 
				<div class="form-group">
					<label for="input1">제목</label>
					<input id="input1" class="form-control" name="title">
				</div>
				
 				<div class="form-group">
					<label for="input3">주소</label>
					<input placeholder="서울 or 제주" id="input3" class="form-control" name="address">
				</div>
 				<div class="form-group">
					<label for="kategorie1">음식 종류</label>
					<input placeholder="ex : 파스타, 피자" id="kategorie1" class="form-control" name="kategorie">
				</div>
				<div class="form-group">
					<label for="textarea1">내용</label>
					<textarea id="textarea1" class="form-control" name="content"></textarea>
				</div>
				<div class="form-group">
					<label for="input3">파일</label>
					<input id="input3" class="form-control" type="file" name="file" accept="image/*">
				</div>
				<div class="form-group">
					<label for="input2">작성자</label>
					<input id="input2" hidden value="${pinfo.member.userid }" readonly class="form-control" name="writer">
					<input value="${pinfo.member.nickName }" readonly class="form-control">
				</div>
				
				<input class="btn btn-primary" type="submit" value="작성"/>
				
				<c:url value="/eatboard/list" var="eatlistUrl">
					<c:if test="${not empty cri.pageNum }">
						<c:param name="pageNum" value="${cri.pageNum }"></c:param>
					</c:if>
					<c:if test="${not empty cri.amount }">
						<c:param name="amount" value="${cri.amount }"></c:param>
					</c:if>
						<c:param name="keyword" value="${cri.keyword }"></c:param>
						<c:param name="type" value="${cri.type }"></c:param>
				</c:url>
				<a class="btn btn-secondary" href="${eatlistUrl }">글 목록</a>
				
			</form>
		</div>
	</div>
	
</div>
</body>
</html>