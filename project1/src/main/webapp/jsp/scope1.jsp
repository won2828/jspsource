<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	유효 범위 
	
	http(s) 프로토콜 특징
	   - 클라이언트가 요청을 하면 응답 후 커넥션 종료(클라이언트의 상태 정보가 없음)
	
	세션 : 서버와 연결된 상태
	- 상태 유지를 위해 세션을 사용(사용자의 상태 서버에 저장-객체 저장)
	- 브라우저마다 세션 생김
	- 세션 종료 : 브라우저 닫을 때 / 서버에서 지정한 세션 유지 시간을 지나면
	   
	쿠키 : 사용자의 상태 클라이언트에 저장(text 형태의 저장)
	- 응답 헤더에 추가해서 보내야 함
	
	
--%>
	<form action="request_scope.jsp" method="post">
		<div>
			<label> <input type="text" name="name" id="name" />
			</label>
		</div>
		<div>
			<button>전송</button>
		</div>
	</form>
	
	<form action="cookie.jsp" method="post">
		<div>
			<label> <input type="text" name="name" id="name" />
			</label>
		</div>
		<div>
			<label> <input type="text" name="age" id="age" />
			</label>
		</div>
		<div>
			<button>전송</button>
		</div>
	</form>
</body>
</html>