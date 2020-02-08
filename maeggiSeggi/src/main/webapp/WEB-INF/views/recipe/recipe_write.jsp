<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<style type="text/css">
b {
	text-align: justify;
	font-size: 15pt;
}
.btn{
padding: 0%;
border: solid 1px transparent;
background: white;
}

h1 {
	text-align: center;
	font-family: PapyrusB;
}

#register {
	width: 10%;
	background-color: white;
	border: solid 1px gray;
	color: #F8585B;
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
	color: #F8585B;
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

select {
	width: 100%;
	padding: 7px 10px;
	margin: 8px 2px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

#sort {
	display: inline-block;
	
}
#ig_side_Add{
display: inline;
}
.jumbotron{
  padding: 30px 15px;
  margin-bottom: 30px;
  color: inherit;
  background-color:#fdd7c8;
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
	
	
		<form class="form-horizontal" action="/maeggiSeggi/recipe/upload.do" method="POST" enctype="multipart/form-data" name="myform">
			<p><b>제목  </b></p>
			<input type="text" id="name" style="width: 80%;" placeholde="레시피 제목을 입력해주세요" />
			
			<p><b>레시피 요약  </b></p>
			<input type="text" id="content_intro" style="width: 80%;" placeholde="본인의 레시피를 간단히 표현해 주세요" />
			
			<div>
				<p>
					<b>카테고리  </b>
				</p>
				<div class="selectbox">
					<select id="select_ctry">
						<option selected>나라별</option>
						<option>한식</option>
						<option>퓨전</option>
						<option>서양/이탈리아</option>
						<option>중국/동남아시아</option>
						<option>일본</option>
					</select>
				</div>
				<div class="selectbox">
					<select id="select_sort">
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
				<select id="amount_per_person">
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
				<select id="cook_time">
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
				<select id="cook_level">
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
				  <input type="radio" name="ig_option" id="main" value="main"> 주재료
				  <input type="radio" name="ig_option" id="sub" value="sub" > 부재료
				  <input type="radio" name="ig_option" id="side" value="side" > 양념
				</div>
				<div id="ig_content">
				<div id="ig_main_Add" class="ig_main_Add">
					<label for="ingredient">재료 이름:</label> 
						<input type="text" id="ingredient"  placeholder="예)돼지고기">&ensp;&ensp;&ensp; 
					<label for="ingredientAmount">계량 정보 :</label> 
						<input type="text" id="ingredientAmount" placeholder="예)200g">
					
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div()">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray;float:left;"></i></button>
				</div>
				
				<div id="ig_side_Add" class="ig_side_Add">
				<label for="ingredient">재료 이름:</label> 
					<input type="text" id="side_ingredient" placeholder="예)고추장">&ensp;&ensp;&ensp; 
				<label for="ingredientAmount">계량 정보 :</label>
				 	<div class="selectbox">
						<select id="select" >
							<option selected>양념</option>
							<option>약간</option>
							<option>적당량</option>
						</select>
					</div>
					<button type="button" id="ig_option_minus"  class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  						<i class="fas fa-minus-circle fa-2x" style="color:gray;"></i></button>
					</div>
				</div>	
				
				<div id="group"></div>
				
				<div>
					<button type="button" id="ig_option_plus" class="btn btn-default" aria-label="Left Align" onclick="add_div()">
	  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
  				</div>
  				<br/>
  		
  			<p><b>요리 순서</b></p>
  			
  			<div class="form-group">
			    <label for='ControlTextarea'>step1</label>
			    <textarea class="form-control" id="ControlTextarea" rows="5"></textarea>
  			</div>
  			<div id="content"></div>
  			<div>
  			  <button type="button" id="recipe_plus" class="btn btn-default" onclick="add_content()">
	  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
  			</div>
  			<br/>
  			
  			
  			
  			<p><b>요리 사진</b></p>
  			
 			<!-- <div class="jumbotron">
	  			<input type="file" id="real-input" class="image_inputType_file" accept="img/*" required multiple><br/>
	  			<input type="file" id="real-input" class="image_inputType_file" accept="img/*" required multiple><br/>
	  			<input type="file" id="real-input" class="image_inputType_file" accept="img/*" required multiple><br/>
	  			<input type="file" id="real-input" class="image_inputType_file" accept="img/*" required multiple><br/>
	  			<input type="file" id="real-input" class="image_inputType_file" accept="img/*" required multiple><br/>
	  		</div> -->
  			
		<input id="register" type="submit" value="레시피 등록">
		</form>

			<input id="cancle" type="button" value="등록 취소">
		
	
	<br />
	<br />
<script type="text/javascript">
	var mainNode;
	var sideNode;
	var serviceType;
	var count=1;
	$(document).ready(function() {
		$('#cancle').click(function() {
			if (confirm('정말 취소하시겠습니까?') == true) {
				document.location.href = "main.do";
			} else {
				return;
			}
		});	
		
		$("input[name='ig_option']:radio").change(function () {
            //라디오 버튼 값을 가져온다.
            serviceType = this.value;
		});
		
		var main = document.getElementById("ig_main_Add");
		var side = document.getElementById("ig_side_Add");
		
		mainNode = document.createElement("div");
		mainNode.appendChild(main.cloneNode(true));
		
		sideNode = document.createElement("div");
		sideNode.appendChild(side.cloneNode(true));
		
		$('input:radio[name="ig_option"][value="main"]').prop('checked', true);
		if($('input:radio[name="ig_option"][value="main"]').prop('checked')) {
            $("#ig_side_Add").css("display","none"); 
		}
		
		const browseBtn = document.querySelector('.browse-btn');
		const realInput = document.querySelector('#real-input');

		browseBtn.addEventListener('click',function(){
			realInput.click();
		});
		
		
	});
	
	function add_div(){
	    if(serviceType == "side") {
	    	document.getElementById('group').append(sideNode.cloneNode(true));
	    } else {
	    	document.getElementById('group').append(mainNode.cloneNode(true));
	    }
	}
	function remove_div(){
		parentNode = document.getElementById("group");
		parentNode.removeChild(parentNode.lastChild);
	}
	var count=1;
	function add_content(){
		count++;
		recipeContent = document.createTextNode("step"+count);
		newP = document.createElement("p");
		newP.appendChild(recipeContent);
		newdiv = document.getElementById("content");
		newdiv.appendChild(newP);
		newcontent = document.querySelector("#ControlTextarea").cloneNode(true);
		newdiv.appendChild(newcontent);

		
	}
		

	
 
 </script>
</body>
</html>