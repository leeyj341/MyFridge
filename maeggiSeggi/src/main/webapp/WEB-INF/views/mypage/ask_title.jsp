<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="maeggi.seggi.reply.replyBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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

<!-- 수정, 삭제 버튼 구현 -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

//수정, 삭제 버튼 구현
 /* $(document).ready(function(){
	var formObj = $("form[name='deleteupdate']");
	
	// 수정 
	$(".update_btn").on("click", function(){
		formObj.attr("action", "/board/updateView");
		formObj.attr("method", "get");
		formObj.submit();				
	})
	
	// 삭제
	$(".delete_btn").on("click", function(){
		formObj.attr("action", "/maeggiSeggi/board/delete.do");
		formObj.attr("method", "post");
		formObj.submit();
	}) */
	
	/* // 취소
	$(".list_btn").on("click", function(){
		
		location.href = "/board/list";
	}) */


	
	function hideDiv(id){ //수정, 댓글 작성화면을 가진 DIV들을 숨기는 함수.
	    var div = document.getElementById(id);
	    div.style.display = "none";	//매개변수로 넘어오는 id값으로 html을 찾아서 안보이게 처리.
	    document.body.appendChild(div); //부모를 document.body로 바꿈.
	}
	
	/* function fn_replyDelete(replyno){
		document.getelementsbyclassname("contentDelete").innerHtml = "삭제되었습니다."
	} */
	
	 function fn_replyReply(replyno){
	    var form = document.form3;
	    var reply = document.getElementById("reply"+replyno);
	    var replyDia = document.getElementById("replyDialog");
	    replyDia.style.display = "";
	   
	    if (updateReno) {
	        fn_replyUpdateCancel();
	    }
	   
	    form.rememo.value = "";
	    form.reparent.value=replyno;
	    reply.appendChild(replyDia);
	    form.rewriter.focus();
	} 
	
	for(var i=0; i<10;i++){
	 $(document).on("click","#test"+index,function(){
	    	title = $(this).text();
	    	$.ajax({
	    		url:"/maeggiSeggi/restaurant/search.do",
	    		type:"get",
	    		data:{
	    			"tit":title},
	    		success:function(data){
	    			mydata="";
	    			for (var i = 0; i < data.length; i++) {
						mydata = mydata+
							"<tr><td class='scon' style=''>"+data[i].title+"<br/>"+"<a href="+data[i].link+">"+data[i].link+"</a>"+"<br/>"+data[i].category+"<br/>"+data[i].description+"<br/>"+data[i].telephone+"<br/>"+data[i].address
							+"</td></tr>"
					}
	    			$("#sch").empty();
	    			$("#sch").append(mydata);
	    		}
	    	});
	    });
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
	<%
		ArrayList<replyBoardVO> list_reply = (ArrayList<replyBoardVO>) request.getAttribute("list_reply");
		BoardVO read = (BoardVO) request.getAttribute("read");
	%>


	<!-- ****** Breadcumb Area Start ****** -->

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

	<div class="container">
		<div class="row">
			<div class="col-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#"><i
								class="fa fa-home" aria-hidden="true"></i>Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">MyPage</li>
						<li class="breadcrumb-item active" aria-current="page">1:1
							문의사항</li>
						<li class="breadcrumb-item active" aria-current="page">1:1
							문의사항 상세보기</li>
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


					<!-- #####################################################수정, 삭제버튼 -->



					<a href="/maeggiSeggi/board/list.do" class="btn btn-primary">목록으로</a>
					<a href="/maeggiSeggi/board/update.do?askno=<%=read.getAskno()%>"
						class="btn btn-warning">수정하기</a>

					<button id="btn-remove" class="btn btn-danger">삭제하기</button>

					<script>
						//삭제 버튼 누르면 삭제할 것이냐고 묻고 삭제한다고 하면 주소이동(BoardController의 remove 메소드 호출)
							$(function(){
							$('#btn-remove').click(function(){
								
										self.location.href = "/maeggiSeggi/board/delete.do?askno=<%=read.getAskno()%>";
			
							});
							});
							</script>

					<!-- <input type="submit" class="delete_btn" value="삭제하기" 
									style="color: white; background-color: #fc6c3f; width: 150px" />
									
								<input type="submit" class="update_btn" value="수정하기"
									style="color: white; background-color: #fc6c3f; width: 150px" /> -->



					<table class="mypage_askboard" id="mypage_askboard_detail"
						border="1">
						<tr>
							<td>작성자</td>
							<td><%=read.getMember_id()%></td>
						</tr>

						<tr>
							<td>작성일</td>
							<td><%=read.getAsk_regdate()%></td>
						</tr>

						<tr>
							<td>제목</td>
							<td><%=read.getAsk_title()%></td>
						</tr>

						<tr>
							<td>content</td>
							<td><%=read.getAsk_content()%></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

		<%
			for (int i = 0; i < list_reply.size(); i++) {
				replyBoardVO repl = list_reply.get(i);
		%>
		<div
			style="border: 1px solid gray; width: 600px; padding: 5px; margin-top: 5px; 
					margin-left: <%=20 * repl.getGroupdepth()%>px;">
			<%=repl.getReplywriter()%>
			<%=repl.getReplydate()%>
			<a onclick="fn_replyDelete(<%=repl.getReplyno()%>)">삭제</a> <a
				onclick="fn_replyReply(<%=repl.getReplyno()%>)">댓글</a> <br />
			<div class="contentDelete" id="reply<%=repl.getReplyno()%>"><%=repl.getReplytitle()%></div>
		</div>
		
		<script type="text/javascript">
		function fn_replyDelete(replyno){
			document.getElementById("reply"+replyno).innerHtml = "삭제되었습니다."
		}
		</script>
		
		<br />
		<div id="replyDialog" style="width: 99%; display: none">
			<form name="form3" action="/maeggiSeggi/board/reply.do" method="post">
				<input type="hidden" name="replywriter"> <input
					type="hidden" name="replyno"> <input type="hidden"
					name="groupord">
				<textarea rows="3" cols="60" name="ask_content" maxlength="500"></textarea>
				<a href="#" onclick="fn_replyReplySave()">저장</a> <a href="#"
					onclick="fn_replyReplyCancel()">취소</a>
			</form>
		</div>
		<%
			}
		%>

	</div>
</body>