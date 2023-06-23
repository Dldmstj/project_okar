<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<%
	// session
	
%>

<script type="text/javascript">
/*
	Member == null
		alert "로그인 후 이용가능합니다."
		location.href="login.jsp"
	checkbox
		=> 유효성 검사
		alert "개인정보 수집,이용 동의에 체크해주세요."
	alert "알림신청 완료"
 */
</script>
<body>
    <div class="container mt-3">
    	<h2>판매준비차량 알림신청</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="name">이름</label>
            <input type="text" value="<%-- obj.getname() --%>" class="form-control" 
      	     id="name" placeholder="이름 입력" name="name">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="phone">전화번호</label>
            <input type="text" value="<%-- obj.getphone() --%>" class="form-control" 
      	     id="phone" placeholder="전화번호 입력" name="phone">
         	</div>
			<div>
				<%--
					개인정보 수집 이용동의 체크박스
				 --%>
			</div>
			<div>
				<%--
					유의사항 label
				 --%>
			</div>
         	<button type="button" onclick="<%-- 유효성 검사 function()--%>" class="btn btn-primary">신청하기</button>
         	<%--
         		alert
         			1 - 개인정보수집및이용동의
         			2 - 알림 신청 완료
         			
         		location.href ="prepareCar.jsp"
         	--%>
     	</form>
    </div>
</body>
</html>