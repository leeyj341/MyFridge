<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Yummy Blog - Food Blog Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>

<%
		ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
		memberVO loginuser = (memberVO) session.getAttribute("loginuser");
	
	%>
	 <% if(session.getAttribute("id")!= null){ //로그인 된 유저만 접근 가능 %>

    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" style="background-image: url(img/bg-img/breadcumb.jpg);z-index: 0">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>정보수정</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">MyPage</li>
                            <li class="breadcrumb-item active" aria-current="page">나의 정보수정</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
	
	<!-- information_update area start -->
	<div style="margin-left: auto; margin-right: auto; width: 60%; position: relative; left: 20%">
			<fieldset >
				<div class="">
					<div class="">
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="member_id" class="" type="text" disabled="disabled" placeholder="아이디"/>
								</div>
							</div>
							<p class="" style="display: none;"></p>
						</div>
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="pass" class="" type="password" placeholder="비밀번호">
									<span class="" style="display: none;"></span>
								</div>
							</div>
							<p class="" style="display: none;"></p>
						</div>
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="pass" class="" type="password" placeholder="비밀번호 확인"/>
									<span class=""></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="">
						<div class="">
							<div class="">
								
								<div class="mypage_info_texts">
									<input name="name" class="" type="text" disabled="disabled" placeholder="이름"/>
								</div>
							</div>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								<div class="year">
									<div class="">
										
										<div>
											<span class="">
												<input name="identi" class="" type="text" maxlength="6" disabled="disabled" placeholder="주민번호 앞자리"/>
											</span>										
										</div>
									</div>
								</div>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="">
						<input name="gender" class="" type="radio" value="male"/>
						<label>남자</label>
					</div>
					<div class="">
						<input name="gender" class="" type="radio" value="female"/>
						<label>여자</label>
					</div>
					<p></p>
				</div>
				<p class="" style="display: none;">필수정보입니다.</p>
				<div class="">
					<div class="">
						<div class="">
							<div class="mypage_info_texts">
								
								<div class="">
									<span class="">
										<select name="phonenum" title="휴대폰 앞 3자리" class="">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
									</span>
									<span class="num">
										<input name="phonenum" class="" type="tel" maxlength="8" placeholder="휴대폰 번호 (숫자만)"/>
									</span>
								</div>
							</div>
							<p class="" style="display: none;"></p>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								<div class="">
									<div class="">
										
									</div>
									<span class="">
										<input name="" class="" type="text" placeholder="이메일"/>
									</span>
									<span class="">@</span>
									<span class="">
										<input name="" class="" type="text" placeholder="직접입력"/>
									</span>
									<select name="selectEmail" title="" class="">
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="nate.com">nate.com</option>
										<option value="google.com">google.com</option>
									</select>
									
								</div>
							</div>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								
								<div class="">
									<input name="height" class="" type="text" maxlength="3" placeholder="키(cm)"/>
								</div>
							</div>
						</div>
						<div class="mypage_info_texts">
							<div class="">
								
								<div class="">
									<input name="weight" class="" type="text" maxlength="3" placeholder="몸무게(kg)"/>
								</div>
							</div>
						</div>
						<p></p>
						<div>
							<input type="button" value="수정 완료" onclick="alert('수정을 완료했습니다.');location.href='mypage_main.do'" style="color:white; background-color: #fc6c3f; width: 100px"/>
							<input type="button" value="수정 취소" onclick="alert('수정을 취소했습니다.');location.href='mypage_main.do'" style="color:white; background-color: #fc6c3f; width: 100px"/>
						</div>
					</div>
				</div>
			</fieldset>
		</div>
	<!-- information_update area end -->

    <!-- ****** Footer Menu Area End ****** -->

    <!-- Jquery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
    
    <% } else{ %>
	
		<script type="text/javascript">
		alert("로그인이 필요한 기능입니다!");
		document.location.href="/maeggiSeggi/loginandcustomer/login.do";
		</script>
		<% }%>
</body>
