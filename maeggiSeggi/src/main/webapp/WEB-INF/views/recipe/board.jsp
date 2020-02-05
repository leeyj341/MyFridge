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

<!-- summer��Ʈ js�ڵ�  -->
<script type="text/javascript"
	src="/maeggiSeggi/common/js/summernote.js"></script>
<!-- include summernote-ko-KR -->
<script src="/maeggiSeggi/common/js/summernote-ko-KR.js"></script>
<!-- ��ư ������ -->

<script type="text/javascript">
	$(document).ready(function() {
		$('#cancle').click(function() {
			if (confirm('���� ����Ͻðڽ��ϱ�?') == true) {
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
             //���� ��ư ���� �����´�.
             var ig_option = this.value;
                             
             if(ig_option == "sub"){
                 $( "#ig_side_Add" ).hide();
                 //������ �϶� ������ ī�װ� show
                 $( "#ig_main_Add" ).show();
             }else if(ig_option == "side"){//����/������ ���
                 //����/���� �϶� ����/���� ī�װ� show
                 $( "#ig_main_Add" ).show();
                 //����/���� �϶� ������ ī�װ� show
                 $( "#ig_side_Add" ).hide();
                 //����/���� �϶� ��� MD Ȱ��ȭ
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
	<div>
		<form action="/maeggiSeggi/recipe/main.do" method="post">
			<p>
				<b>���� : </b><input type="text" id="title" style="width: 70%;"
					placeholde="������ ������ �Է����ּ���" />
			</p>
			<p>
				<b>������ ��� : </b><input type="text" id="intro" style="width: 66%;"
					placeholde="������ �����Ǹ� ������ ǥ���� �ּ���" />
			</p>
			<div>
				<p>
					<b>ī�װ� : </b>
				</p>
				<div class="selectbox">
					<select id="select">
						<option selected>����</option>
						<option>�ѽ�</option>
						<option>ǻ��</option>
						<option>����/��Ż����</option>
						<option>�߱�/�����ƽþ�</option>
						<option>�Ϻ�</option>
					</select>
				</div>
				<div class="selectbox">
					<select id="select">
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
				<select id="select">
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
				<select id="select">
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
				<select id="select">
					<option selected>���̵�</option>
					<option>�ʱ�</option>
					<option>�߱�</option>
					<option>���</option>
				</select>
			</div>
			<br />
			<br />
			
				<p><b>���</b></p>
				<div id="sort">
				  <input type="radio" name="ig_option" value="main" checked> �����
				  <input type="radio" name="ig_option" value="sub" value="�����"> �����
				  <input type="radio" name="ig_option" value="side" value="���"> ���
				</div>
				<div id="ig_content">
				<div id="ig_main_Add" class="ig_main_Add">
					<label for="ingredient">��� �̸�:</label> 
						<input type="text" id="ingredient" name="ingredient" placeholder="��)�������">&ensp;&ensp;&ensp; 
					<label for="ingredientAmount">�跮 ���� :</label> 
						<input type="text" id="ingredientAmount" name="ingredient" placeholder="��)200g">
					
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray"></i></button>
				</div>
				<div id="ig_side_Add" class="ig_side_Add">
				<label for="ingredient">��� �̸�:</label> 
					<input type="text" id="ingredient" name="ingredient" placeholder="��)������">&ensp;&ensp;&ensp; 
				<label for="ingredientAmount">�跮 ���� :</label>
				 	<div class="selectbox">
						<select id="select" >
							<option selected>���</option>
							<option>�ణ</option>
							<option>���緮</option>
						</select>
					</div>
				</div>
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray"></i></button>
				</div>
				<div id="group"></div>
				<button type="button" class="btn btn-default" aria-label="Left Align" onclick="add_div()">
  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
			


			<div id="summernote">�����Ǹ� �Է����ּ���</div>
			<input id="register" type="submit" value="������ ���">
		</form>

		<form action="" method="get">
			<input id="cancle" type="button" value="��� ���">
		</form>

	</div>
	<br />
	<br />

</body>
</html>