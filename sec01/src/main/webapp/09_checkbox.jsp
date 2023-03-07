<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 악세사리</h2>
	관심항목을 선택하세요.
	<hr>
	<form method="get" action="CheckboxServlet">
		<input type="checkbox" name="item" value="신발"> 신발
		<input type="checkbox" name="item" value="가방"> 가방
		<input type="checkbox" name="item" value="벨트"> 벨트<br>
		<input type="checkbox" name="item" value="모자"> 모자
		<input type="checkbox" name="item" value="시계"> 시계
		<input type="checkbox" name="item" value="쥬얼리"> 쥬얼리<br><br>
		
		<span style="float:left; margin-right:20px">
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
		</span>
		
			<lable for="interest" style="float:left;">관심분야</lable>
			<select id="interest" name="interest" size="5" multiple="multiple">
				<option value="">선택하세요</option>
				<option value="에스프레소">에스프레소</option>
				<option value="생두">생두</option>
				<option value="원두">원두</option>
				<option value="핸드드립">핸드드립</option>
			</select>
			<br>

		<input type="submit" value="전송" style="clear:both; margin-left:50px">
	</form>
</body>
</html>