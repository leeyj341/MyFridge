<%@page import="maeggi.seggi.reply.replyBoardVO"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Yummy Blog - Food Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">

<script type="text/javascript">
	
	function hideDiv(id){ //수정, 댓글 작성화면을 가진 DIV들을 숨기는 함수.
	    var div = document.getElementById(id);
	    div.style.display = "none";	//매개변수로 넘어오는 id값으로 html을 찾아서 안보이게 처리.
	    document.body.appendChild(div); //부모를 document.body로 바꿈.
	}
	
	function fn_replyDelete(replyno){
		
	}
	
	function fn_replyReply(replyno){
	    var form = document.form3;
	    var reply = document.getElementById("reply"+replyno);
	    var replyDia = document.getElementById("replyDialog");
	    replyDia.style.display = "";
	   
	    if (updateReno) {
	        fn_replyUpdateCancel();
	    }
	   
	    form.rememo.value = "";
	    form.reparent.value=reno;
	    reply.appendChild(replyDia);
	    form.rewriter.focus();
	}
	
	function fn_replyReplyCancel(){
	    hideDiv("replyDialog");
	}
	
	function fn_replyReplySave(){
	    var form = document.form3;
	   
	    if (form.replytitle.value=="") { ////title을 writer로 수정해줘야됨. VO추가해서
	        alert("작성자를 입력해주세요.");
	        form.replytitle.focus();
	        return;
	    }
	    if (form.replytitle.value=="") {// title을 content로 수정해줘야됨. VO추가해서
	        alert("글 내용을 입력해주세요.");
	        form.replytitle.focus();
	        return;
	    }
	   
	    form.action="board6ReplySave";// 컨트롤러랑 연결~!!!
	    form.submit();   
	}
</script>



</head>

<body>
	<% ArrayList<replyBoardVO> list_reply = (ArrayList<replyBoardVO>)request.getAttribute("list_reply");%>

	<!-- ****** Breadcumb Area Start ****** -->
<div>	
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>1:1문의사항</h2>
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
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i>Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">MyPage</li>
							<li class="breadcrumb-item active" aria-current="page">1:1 문의사항</li>
							<li class="breadcrumb-item active" aria-current="page">1:1 문의사항 상세보기</li>
						</ol>
					</nav>
				</div>
			</div>

			<div class="row">
				<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
				<div class="col-12" id="mypage_asklist_customview">
					<h2>1:1 문의사항 상세보기</h2>
				</div>
			</div>

			<div class="row">
				<div class="col-12" id="mypage_asklist_customview">



					<div id="mypage_AskUserForm">
						<table class="mypage_askboard" id="mypage_askboard_detail" border="1">
							<tr>
								<td>작성자</td>
								<td>debugger</td>
							</tr>

							<tr>
								<td>작성일</td>
								<td>2020-01-15</td>
							</tr>

							<tr>
								<td>제목</td>
								<td>레시피 글에 오타가 잇어여</td>
							</tr>

							<tr>
								<td>content</td>
								<td>레시피에 오타가있어요. 빨리 수정해주세요 .</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			
			<%for(int i=0;i<list_reply.size();i++){ 
				replyBoardVO repl = list_reply.get(i);
			%>
				<div style="border: 1px solid gray; width: 600px; padding: 5px; margin-top: 5px; 
					margin-left: <%= 20 * repl.getGroupdepth()%>px;">
					<%= repl.getReplywriter() %>
					<%= repl.getReplydate() %>
					<a onclick="fn_replyDelete(<%= repl.getReplyno()%>)">삭제</a>
					<a onclick="fn_replyReply(<%= repl.getReplyno()%>)">댓글</a>
				<br/>
					<div id="reply<%= repl.getReplyno()%>"><%=repl.getReplytitle() %></div>
				</div>
				<br/>
				<div id="replyDialog" style="width: 99%; display: none">
					<form name="form3" action="/maeggiSeggi/board/reply.do" method="post">
						<input type="hidden" name="replywriter">
						<input type="hidden" name="replyno">
						<input type="hidden" name="groupord">
						<textarea rows="3" cols="60" name="ask_content" maxlength="500"></textarea>
						<a href="#" onclick="fn_replyReplySave()">저장</a>
						<a href="#" onclick="fn_replyReplyCancel()">취소</a>
					</form>
				</div>
				<% } %>
		
			<!-- <div id="mypage_AskUserForm">
				<div>
					<h3>댓글</h3>
				</div>
				<table  class="mypage_askboard" id="mypage_askboard_detail" border="1">
					<tr>
						<td>관리자</td>
						<td>수정해 드렸습니다~</td>
						<td>2020-01-18</td>
					</tr>

					<tr>
						<td>홍길동</td>
						<td>감사합니다~</td>
						<td>2020-01-19</td>					
					</tr>
				</table>
				<div style="text-align: center;">
					<form>
						<input type="button" id="mypage_ask_reply_send" value="목록 보기"
								onclick="location.href='ask.do'" style="color:white; background-color: #fc6c3f; width: 100px">
						<input type="button" id="mypage_ask_reply_send" value="댓글  달기"
								onclick="alert('댓글이 저장되었습니다.')" style="color:white; background-color: #fc6c3f; width: 100px"> 
						<input type="button"
								id="mypage_ask_reply_pause" value="댓글지우기" onclick="alert('댓글이 삭제되었습니다.')" style="color:white; background-color: #fc6c3f; width: 100px"style="color:white; background-color: #fc6c3f; width: 100px">
					</form>
				</div>
			</div> -->
	
		</div>
	</div>
		<!-- ****** Breadcumb Area End ****** -->





		<!-- ****** Archive Area Start ****** -->
		<section class="archive-area section_padding_80">


			<div class="container">


				<div class="col-12">
					<div class="pagination-area d-sm-flex mt-15"></div>
				</div>

			</div>
	</div>
	</section>
	<!-- ****** Archive Area End ****** -->

	<!-- ****** Instagram Area Start ****** -->
	<div
		class="instargram_area owl-carousel section_padding_100_0 clearfix"
		id="portfolio">

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/1.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/2.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/3.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/4.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/5.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/6.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/1.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/2.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- ****** Our Creative Portfolio Area End ****** -->

	<!-- ****** Footer Social Icon Area Start ****** -->
	<div class="social_icon_area clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-social-area d-flex">
						<div class="single-icon">
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>facebook</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span>GOOGLE+</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-linkedin-square"
								aria-hidden="true"></i><span>linkedin</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i><span>VIMEO</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i><span>YOUTUBE</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Footer Social Icon Area End ****** -->

	<!-- ****** Footer Menu Area Start ****** -->
	<footer class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-content">
						<!-- Logo Area Start -->
						<div class="footer-logo-area text-center">
							<a href="index.html" class="yummy-logo">Yummy Blog</a>
						</div>
						<!-- Menu Area Start -->
						<nav class="navbar navbar-expand-lg">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#yummyfood-footer-nav"
								aria-controls="yummyfood-footer-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars" aria-hidden="true"></i> Menu
							</button>
							<!-- Menu Area Start -->
							<div class="collapse navbar-collapse justify-content-center"
								id="yummyfood-footer-nav">
								<ul class="navbar-nav">
									<li class="nav-item active"><a class="nav-link" href="#">Home
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Features</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Categories</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Archive</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">About</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Contact</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	<div class="col-12">
		
	</div>
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
</body>