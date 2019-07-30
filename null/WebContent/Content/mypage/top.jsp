<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--
username - 회원정보
userid - 회원정보
password - 회원 패스워드
gotomyinfo - 나의 정보 확인 페이지 이동 
regdate - 가입일 
goordereval - 주문평가
goaddrinfo - 주소록
goorderlist - 주문 리스트 
.topbtn_box - 페이지 위의 버튼 제어 박스 
 --%>
<style type="text/css">
html,body{
	max-width:90%;height: 100%;
	margin: auto;
}
a{
	text-decoration: none;
}
.btn_parent{
	position: relative;
	width: 1000px;
	height: 240px;
}
.topbtn_box {
	width: 320px;
	height: 160px;
	padding: 10px;
	margin: 25px;
	display: inline-block;
	vertical-align: top;
}
.topbtn_right{
	display: inline-block;
	margin: 10px;
}
.left_menu{
	display: inline-block;
	width: 180px;
	height: 500px;
	background-color: gray;
}

</style>

	<hr>
	<br>
<!-- <div style="padding-left: 50px; padding-right: 50px;"> -->
<div >
	<div id="top_mypage"
		style="width: 1050px; text-align: center; font-size: 20px; font-weight: bolder; margin-bottom: 20px;">마이페이지</div>

	<div class="btn_parent"">
		<div class="topbtn_box" style="border: 1px solid red; position: absolute; left: 100px; ">

			<div style="display: inline-block ;">
				<img src="../img/Signup(checked).PNG">
			</div>
			<div style="display: inline-block;">
				<p>
					<span id="username"><b>~ 회원님 반갑습니다.</b></span>
				</p>
				<p style="font-size: 14px;">
					<img src="../img2/mypage_arrow.PNG" height="15" width="15">
					아이디:<span id="userid"></span>atoro
				</p>
				<p style="font-size: 14px;">
					<img src="../img2/mypage_arrow.PNG" height="15" width="15">
					이메일:<span id="userpassword"></span>atoro@daum.net
				</p>
				<p style="font-size: 12px;">
					&nbsp;&nbsp;가입일: <span id="regdate">2019-07-25</span> &nbsp;&nbsp;<input
						type="button" value="내정보 확인" id="gomyinfo">
				</p>

			</div>

		</div>



		<div class="topbtn_box" style="border: 1px solid gray; position: absolute; right: 50px; ">

			<div style="text-align: center">현황~~</div>
			<div  class="topbtn_right" style=";">
				<p style="margin-left: 12px;">
					<img src="../img2/signup(userinfo)2.PNG" height="50" width="50">
				</p>
				<p>
					<input type="button" value="상품후기 " id="goordereval">
				</p>
			</div>
			<div class="topbtn_right" style="">
				<p style="margin-left: 12px;">
					<img src="../img2/truck.PNG" height="50" width="50">
				</p>
				<p>
					<input type="button" value="배송지 관리" id="goaddrinfo">
				</p>
			</div>
			<div class="topbtn_right" style="">

				<p style="margin-left: 12px;">
					<img src="../img2/product.PNG" height="50" width="50">
				</p>
				<p>
					<input type="button" value="주문현황" id="goorderlist">
				</p>
			</div>

		</div>
	</div>
</div>
<hr style="border: 1px solid red;">
<div class ="left_menu">
	<p style="font-weight: bolder; font-size: 20px;">쇼핑내역</p>
	<p><a href="orderinfo.jsp">주문현황 조회</a></p>
	<p><a href="returnAS.jsp">반품/교환/AS</a></p><br>
	<p style="font-weight: bolder; font-size: 20px;">쇼핑수첩</p>
	<p><a href="ordereval.jsp">나의 상품후기</a></p><br>
	<p style="font-weight: bolder; font-size: 20px;">개인정보</p>
	<p><a href="addrlist.jsp">배송주소록관리</a></p>
	<p><a href="modifyinfo.jsp">개인정보수정</a></p>
</div>
	<script src="jquery-3.4.1.js"></script>
	<script src="js/top.js"></script>