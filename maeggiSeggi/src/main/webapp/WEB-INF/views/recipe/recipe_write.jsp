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
<script type="text/javascript" src="/maeggiSeggi/common/js/recipe_write.js" ></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>


			<span>���� �ð� :</span>
			<div class="selectbox">
				<select id="cook_time" name="cook_time">
					<option selected>��</option>
					<option>10</option>
					<option>20</option>
					<option>30</option>
					<option>40</option>
					<option>50</option>
					<option>1</option>
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
			<br/>
			<span>���� Į�θ�</span>
			<div class="selectbox">
				<select id="kcal" name="kcal">
					<option selected>kcal</option>
					<option>250</option>
					<option>500</option>
					<option>800</option>
					<option>1000</option>
				</select>
			</div>
			<span>���� ���ݴ�</span>
			<div class="selectbox">
				<select id="price" name="price">
					<option selected>����(��)</option>
					<option>5000</option>
					<option>10000</option>
					<option>30000</option>
					<option>50000</option>
				</select>
			</div>
			
			<br />
			<br />
			
				<p><b>���</b></p>
				<div id="sort" >
				  <input type="radio" class="ig_option" name="ig_option" id="main" value="�����"> �����
				  <input type="radio" class="ig_option" name="ig_option" id="sub" value="�����" > �����
				  <input type="radio" class="ig_option" name="ig_option" id="side" value="���" > ���
				</div>
				<div id="ig_content">
				<div id="ig_main_Add" class="ig_main_Add">
					<label for="ingredient">��� �̸�:</label> 
						<input type="text" id="ingredient" name="ig_detail[0].name" placeholder="��)�������">&ensp;&ensp;&ensp; 
					<label for="ingredientAmount">�跮 ���� :</label> 
						<input type="text" id="ingredientAmount" name="ig_detail[0].volume" placeholder="��)200 [��� ������ g ����]">
					
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div()">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray;float:left;"></i></button>
				</div>
				
<!-- 				<div id="ig_side_Add" class="ig_side_Add">
				<label for="ingredient">��� �̸�:</label> 
					<input type="text" id="side_ingredient" name="ig_detail[0].name" placeholder="��)������">&ensp;&ensp;&ensp; 
				<label for="ingredientAmount">�跮 ���� :</label>
				 	<div class="selectbox">
						<select id="select" name="ig_detail[0].volume" >
							<option selected>���</option>
							<option>�ణ</option>
							<option>���緮</option>
						</select>
					</div> 
					<button type="button" id="ig_option_minus"  class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  						<i class="fas fa-minus-circle fa-2x" style="color:gray;"></i></button>
					</div> -->
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


</body>
</html>