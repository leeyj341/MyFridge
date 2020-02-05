<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<!-- include libraries(jQuery, bootstrap) -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- summer노트 js코드  -->
<script type="text/javascript"
	src="/maeggiSeggi/common/js/summernote.js"></script>
<!-- include summernote-ko-KR -->
<script src="/maeggiSeggi/common/js/summernote-ko-KR.js"></script>
<!-- 버튼 아이콘 -->

<script type="text/javascript">
	$(document).ready(function() {
		$('#cancle').click(function() {
			if (confirm('정말 취소하시겠습니까?') == true) {
				document.location.href = "main.do";
			} else {
				return;
			}
		});
	});
	function add_div(){
	    var div = document.createElement('div');
	    div.innerHTML = document.getElementById('ig_content').innerHTML;
	    document.getElementById('group').appendChild(div);
	}
	function remove_div(obj){
		parentNode = document.getElementById("group");
		parentNode.removeChild(parentNode.lastChild);
	}
	$(document).ready(function() {
		if("${ig_option}" == "main"){
			$('input:radio[name="ig_option"][value="main"]').prop('checked', true);	
			 $( "#ig_side_Add" ).hide();
			 $( "#ig_main_Add" ).show();
		
		}
		 $("input[name='ig_option']:radio").change(function () {
             //라디오 버튼 값을 가져온다.
             var ig_option = this.value;
                             
             if(ig_option == "sub"){
                 $( "#ig_side_Add" ).hide();
                 //스포츠 일때 스포츠 카테고리 show
                 $( "#ig_main_Add" ).show();
             }else if(ig_option == "side"){//공연/전시인 경우
                 //공연/전시 일때 공연/전시 카테고리 show
                 $( "#ig_main_Add" ).show();
                 //공연/전시 일때 스포츠 카테고리 show
                 $( "#ig_side_Add" ).hide();
                 //공연/전시 일때 담당 MD 활성화
             }
         });
	};


</script>
<style type="text/css">
b {
	text-align: justify;
	font-size: 15pt;
}

h1 {
	text-align: center;
	font-family: PapyrusB;
}

#register {
	width: 10%;
	background-color: white;
	border: solid 1px gray;
	color: #f8585b;
	padding: 9px 10px;
	text-align: center;
	text-decoration: none;
	font-size: 15px;
	font-weight: bolder;
	cursor: pointer;
	border-radius: 10px;
	margin-top: 10px;
	margin-left: 80%;
	float: left;
}

#cancle {
	width: 10%;
	background-color: white;
	border: solid 1px gray;
	color: #f8585b;
	padding: 9px 10px;
	text-align: center;
	text-decoration: none;
	font-size: 15px;
	font-weight: bolder;
	cursor: pointer;
	float: left;
	border-radius: 10px;
	margin-top: 10px;
}

.selectbox {
	display: inline-block;
}
input[type=text] {
  width: 40%;
  padding: 7px 10px;
  margin: 8px 2px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
select{
 width: 100%;
  padding: 7px 10px;
  margin: 8px 2px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;

}
#sort{
display: inline-block;
}

</style>

</head>



<body style="margin-left: 15%; margin-right: 10%;">
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#"><i
								class="fa fa-home" aria-hidden="true"></i><b>Home</b></a></li>
						<li class="breadcrumb-item active" aria-current="page"><b>RECIPE</b></li>
						<li class="breadcrumb-item active" aria-current="page"><b>레시피
								등록하기</b></li>
					</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<h1>레시피 작성</h1>
	<br>
	<br>
	<div>
		<form action="/maeggiSeggi/recipe/main.do" method="post">
			<p>
				<b>제목 : </b><input type="text" id="title" style="width: 70%;"
					placeholde="레시피 제목을 입력해주세요" />
			</p>
			<p>
				<b>레시피 요약 : </b><input type="text" id="intro" style="width: 66%;"
					placeholde="본인의 레시피를 간단히 표현해 주세요" />
			</p>
			<div>
				<p>
					<b>카테고리 : </b>
				</p>
				<div class="selectbox">
					<select id="select">
						<option selected>나라별</option>
						<option>한식</option>
						<option>퓨전</option>
						<option>서양/이탈리아</option>
						<option>중국/동남아시아</option>
						<option>일본</option>
					</select>
				</div>
				<div class="selectbox">
					<select id="select">
						<option selected>종류별</option>
						<option>메인 반찬</option>
						<option>피자/디저트</option>
						<option>찜/찌개/전골/국</option>
						<option>밥</option>
						<option>만두/면류</option>
						<option>나물/생채/샐러드</option>
					</select>
				</div>
			</div>
			<p>
				<b>요리 정보</b>
			</p>
			<span>인원 :</span>
			<div class="selectbox">
				<select id="select">
					<option selected>인분</option>
					<option>1인분</option>
					<option>2인분</option>
					<option>3인분</option>
					<option>4인분</option>
					<option>5인분 이상</option>
				</select>
			</div>


			<span>조리 시간 :</span>
			<div class="selectbox">
				<select id="select">
					<option selected>분</option>
					<option>10분</option>
					<option>20분</option>
					<option>30분</option>
					<option>40분</option>
					<option>50분</option>
					<option>1시간이상</option>
				</select>
			</div>
			<span>요리 난이도:</span>
			<div class="selectbox">
				<select id="select">
					<option selected>난이도</option>
					<option>초급</option>
					<option>중급</option>
					<option>고급</option>
				</select>
			</div>
			<br />
			<br />
			
				<p><b>재료</b></p>
				<div id="sort">
				  <input type="radio" name="ig_option" value="main" checked> 주재료
				  <input type="radio" name="ig_option" value="sub" value="부재료"> 부재료
				  <input type="radio" name="ig_option" value="side" value="양념"> 양념
				</div>
				<div id="ig_content">
				<div id="ig_main_Add" class="ig_main_Add">
					<label for="ingredient">재료 이름:</label> 
						<input type="text" id="ingredient" name="ingredient" placeholder="예)돼지고기">&ensp;&ensp;&ensp; 
					<label for="ingredientAmount">계량 정보 :</label> 
						<input type="text" id="ingredientAmount" name="ingredient" placeholder="예)200g">
					
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray"></i></button>
				</div>
				<div id="ig_side_Add" class="ig_side_Add">
				<label for="ingredient">재료 이름:</label> 
					<input type="text" id="ingredient" name="ingredient" placeholder="예)고추장">&ensp;&ensp;&ensp; 
				<label for="ingredientAmount">계량 정보 :</label>
				 	<div class="selectbox">
						<select id="select" >
							<option selected>양념</option>
							<option>약간</option>
							<option>적당량</option>
						</select>
					</div>
				</div>
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray"></i></button>
				</div>
				<div id="group"></div>
				<button type="button" class="btn btn-default" aria-label="Left Align" onclick="add_div()">
  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
			


			<div id="summernote">레시피를 입력해주세요</div>
			<input id="register" type="submit" value="레시피 등록">
		</form>

		<form action="" method="get">
			<input id="cancle" type="button" value="등록 취소">
		</form>

	</div>
	<br />
	<br />

</body>
</html>