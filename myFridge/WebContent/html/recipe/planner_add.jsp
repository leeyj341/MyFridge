<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body style="text-align: center;">
	<div class="row">
	<div class="col-sm-6" style="background-color:lavender;">
		<h2>������ ���� ��� üũ�ϱ�</h2>
				<fieldset>
					<legend>���Ȯ��</legend>
					<input type="checkbox" name="food" value="����">����
					<input type="checkbox" name="food" value="���">���
					<input type="checkbox" name="food" value="����">����
					<input type="checkbox" name="food" value="�������">�������
					<input type="checkbox" name="food" value="ġ��">ġ��
					<input type="checkbox" name="food" value="���߰���">���߰���<br/>
					<input type="button" value="üũ�� ��� ��� ��ٱ��Ͽ� �߰��ϱ�">
				</fieldset>
	</div>
	<div class="col-sm-6" style="background-color:lavenderblush;">
		<div>
			<h2>��¥ ����</h2>
			<input type="date" name="day" min="2020-01-01">
			<input type="radio" name="time" value="��ħ">��ħ
			<input type="radio" name="time" value="����">����
			<input type="radio" name="time" value="����">����<br/>
			<input type="button" value="Į�θ� Ȯ���ϱ�">
		</div>
		<div>
			<span>����Ǵ� Į�θ�</span>
				<strong>1200</strong>
			<span>kcal</span>
		</div>
		<input type="submit" value="�Ĵܿ� �߰��ϱ�">
	</div>
	</div>
</body>
</html>