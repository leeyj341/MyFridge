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
<link href="/maeggiSeggi/common/css/recipe_write.css" rel="stylesheet">

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
						<li class="breadcrumb-item active" aria-current="page"><b>������
								����ϱ�</b></li>
					</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<h1>������ �ۼ�</h1>
	<br>
	<br>
	
	
		<form class="form-horizontal" action="/maeggiSeggi/recipe/recipe_write.do" method="POST" enctype="multipart/form-data">
			<p><b>����  </b></p>
			<input type="text" id="name" name="name" style="width: 80%;" placeholde="������ ������ �Է����ּ���" />
			
			<p><b>������ ���  </b></p>
			<input type="text" id="content_intro" name="content_intro" style="width: 80%;" placeholde="������ �����Ǹ� ������ ǥ���� �ּ���" />
			
			<div>
				<p>
					<b>ī�װ�  </b>
				</p>
				<div class="selectbox">
					<select id="select_ctry" name="recipe_category">
						<option selected>�׸���</option>
						<option>�ѽ�</option>
						<option>ǻ��</option>
						<option>����/��Ż����</option>
						<option>�߱�/�����ƽþ�</option>
						<option>�Ϻ�</option>
					</select>
				</div>
				<div class="selectbox" >
					<select id="select_sort" name="food_category">
						<option selected>������</option>
						<option>���� ����</option>
						<option>����/����Ʈ</option>
						<option>��/�/����/��</option>
						<option>��</option>
						<option>����/���</option>
						<option>����/��ä/������</option>
					</select>
				</div>
			</div>
			<p>
				<b>�丮 ����</b>
			</p>
			<span>�ο� :</span>
			<div class="selectbox">
				<select id="amount_per_person" name="amount_per_person">
					<option selected>�κ�</option>
					<option>1�κ�</option>
					<option>2�κ�</option>
					<option>3�κ�</option>
					<option>4�κ�</option>
					<option>5�κ� �̻�</option>
				</select>
			</div>


			<span>���� �ð� :</span>
			<div class="selectbox">
				<select id="cook_time" name="cook_time">
					<option selected>��</option>
					<option>10��</option>
					<option>20��</option>
					<option>30��</option>
					<option>40��</option>
					<option>50��</option>
					<option>1�ð��̻�</option>
				</select>
			</div>
			<span>�丮 ���̵�:</span>
			<div class="selectbox">
				<select id="cook_level" name="cook_level">
					<option selected>���̵�</option>
					<option>�ʺ�ȯ��</option>
					<option>�߱�</option>
					<option>�����</option>
				</select>
			</div>
			<br />
			<br />
			
				<p><b>���</b></p>
				<div id="sort">
				  <input type="radio" name="ig_option" id="main" value="main"> �����
				  <input type="radio" name="ig_option" id="sub" value="sub" > �����
				  <input type="radio" name="ig_option" id="side" value="side" > ���
				</div>
				<div id="ig_content">
				<div id="ig_main_Add" class="ig_main_Add">
					<label for="ingredient">��� �̸�:</label> 
						<input type="text" id="ingredient" name="ig_detaill[0].name" placeholder="��)�������">&ensp;&ensp;&ensp; 
					<label for="ingredientAmount">�跮 ���� :</label> 
						<input type="text" id="ingredientAmount" name="ig_detaill[0].volume" placeholder="��)200g">
					
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div()">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray;float:left;"></i></button>
				</div>
				
				<div id="ig_side_Add" class="ig_side_Add">
				<label for="ingredient">��� �̸�:</label> 
					<input type="text" id="side_ingredient" name="ig_detaill[0].name" placeholder="��)������">&ensp;&ensp;&ensp; 
				<label for="ingredientAmount">�跮 ���� :</label>
				 	<div class="selectbox">
						<select id="select" name="ig_detaill[0].volume" >
							<option selected>���</option>
							<option>�ణ</option>
							<option>���緮</option>
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
  		
  			<p><b>�丮 ����</b></p>
  			
  			<div class="form-group">
			    <label for='ControlTextarea'>step1</label>
			    <textarea class="form-control" id="ControlTextarea" name="recipe_detail[0].recipe_describe" rows="5"></textarea>
  			</div>
  			<div id="content"></div>
  			<div>
  			  <button type="button" id="recipe_plus" class="btn btn-default" onclick="add_content()">
	  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
  			</div>
  			<br/>
  			
  			
  			
  			<p><b>�丮 ����</b></p>
  			
 			<div class="jumbotron">
	 			<div id="imginsert">
	 				<label style="color:gray";>�ټ��� ���� ���ε尡 �����մϴ�.</label><br/>
		  			<input type="file" id="real-input" name="myphoto" class="image_inputType_file" accept="img/*" required multiple><br/>
		  		</div>
	  		</div>

  			 
  			
		<input id="register" type="submit" value="������ ���">
		</form>

			<input id="cancle" type="button" value="��� ���">
		
	
	<br />
	<br />
<script type="text/javascript">
	var mainNode;
	var sideNode;
	var serviceType;
	var number=0;
	
	$(document).ready(function() {
		$('#cancle').click(function() {
			if (confirm('���� ����Ͻðڽ��ϱ�?') == true) {
				document.location.href = "main.do";
			} else {
				return;
			}
		});	
		
		$("input[name='ig_option']:radio").change(function () {
            //���� ��ư ���� �����´�.
            serviceType = this.value;
		});
		
		var main = document.getElementById("ig_main_Add");
		var side = document.getElementById("ig_side_Add");
		
		mainNode = document.createElement("div");
		mainNode.append(main.cloneNode(true));
		
		sideNode = document.createElement("div");
		sideNode.appendChild(side.cloneNode(true));
		
		$('input:radio[name="ig_option"][value="main"]').prop('checked', true);
		if($('input:radio[name="ig_option"][value="main"]').prop('checked')) {
            $("#ig_side_Add").css("display","none"); 
		}
		
		
	});
	
	function add_div(){
		number++;
	    if(serviceType == "side") {
	    	
	    	document.getElementById('group').append(sideNode.cloneNode(true));
	    	sideNode.children("input").first().attr("name", "ig_detaill[" + number + "].name");
	    	sideNode.children("input").last().attr("name", "ig_detaill[" + number + "].volume");
	    	
	    } else {
	    	
	    	document.getElementById('group').append(mainNode.cloneNode(true));
	    	mainNode.children("input").first().attr("name", "ig_detaill[" + number + "].name");
	    	mainNode.children("input").last().attr("name", "ig_detaill[" + number + "].volume");
	    }
	}
	function remove_div(){
		parentNode = document.getElementById("group");
		parentNode.removeChild(parentNode.lastChild);
	}
	var count=0;
	function add_content(){
		count++;
		recipeContent = document.createTextNode("step"+count);
		newP = document.createElement("p");
		newP.appendChild(recipeContent);
		newdiv = document.getElementById("content");
		newdiv.appendChild(newP);
		newcontent = document.querySelector("#ControlTextarea").cloneNode(true);
		newcontent.setAttribute( "name", "recipe_detail["+count+"].recipe_describe"); 
		newdiv.appendChild(newcontent);

		
	}
/* 	var imgnum=0;
	function add_img(){
		imgnum++;
		imgContent = document.createTextNode("PHOTO "+imgnum);
		newImg = document.createElement("p");
		newImg.appendChild(imgContent);
		newImgContent = document.getElementById("contentimg")
		newImgContent.appendChild(newImg);
		newimgtext = document.querySelector("real-input").cloneNode(true);
		newimgtext.setAttribute("name","recipe_detail["+imgnum+"].myphoto");
		newImgContent.appendChild(newimgtext);
		 
	}*/

	
 
 </script>
</body>
</html>