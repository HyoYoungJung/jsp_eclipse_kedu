<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src=join.js></script>
</head>
<body>
	<form name="frm" method="get" action="JoinServlet">
		이름 <input type="text" name="name">
		<br>
		주민번호 <input type="text" name="idnum1">
		 - <input type="text" name="idnum2">
		<br>
		아이디 <input type="text" name="id">
		<br>
		비밀번호 <input type="text" name="pw">
		<br>
		이메일 <input type="text" name="mail1">
		 @ <input type="text" name="mail2">
		 <select name="emailaddr">
		 	<option value="">직접입력</option>
		 	<option value="daum.net">daum.net</option>
		 	<option value="naver.com">naver.com</option>
		 	<option value="gmail.com">gmail.com</option>
		 	</select>
		 <br>
		우편번호 <input type="text" name="postnum">
		<br>
		주소 <input type="text" name="addr1">
		<input type="text" name="addr2">
		<br>
		휴대폰번호 <input type="text" name="phone">
		<br>
		<lable for="job">직업</lable>
		<select id="job" name="job" size="1">
			<option value="">선택하세요</option>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select>
		<br>
		<lable for="chk_mail">메일/SMS 정보 수신</lable>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked>수신
		<input type="radio" id="chk_mail" name="chk_mail" value="no">수신거부
		<br>	
		<lable for="checkbox">관심분야</lable>
			<input type="checkbox" name="item" value="생두"> 생두
			<input type="checkbox" name="item" value="원두"> 원두
			<input type="checkbox" name="item" value="로스팅"> 로스팅
			<input type="checkbox" name="item" value="핸드드립"> 핸드드립
			<input type="checkbox" name="item" value="에스프레소"> 에스프레소
			<input type="checkbox" name="item" value="창업"> 창업
		<br><br>
		<input type="submit" value="회원가입" onclick="return check()" style="clear:both;">
		<input type="reset" value="취소" style="clear:both;">
	</form>
</body>
</html>