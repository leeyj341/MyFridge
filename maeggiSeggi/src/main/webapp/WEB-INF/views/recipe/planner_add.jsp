<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<style type="text/css">
h4 {
	text-align: center;
}
</style>
</head>
<body style="font-family: PapyrusB;">
	<div class="row" style="margin-left: auto; margin-right: auto;">
		<div class="col-sm-6"
			style="background-color: lavender; margin-right: auto; padding: 0px">

			<h4>������ ���� ��� üũ�ϱ�</h4>
			<fieldset style="text-align: center;">
				<h4>���Ȯ��</h4>
				<input type="checkbox" name="food" value="����">���� <input
					type="checkbox" name="food" value="���">��� <input
					type="checkbox" name="food" value="����">���� <input
					type="checkbox" name="food" value="�������">������� <input
					type="checkbox" name="food" value="ġ��">ġ�� <input
					type="checkbox" name="food" value="���߰���">���߰���<br /> <br />
				<br /> <br /> <input type="button" value="üũ�� ��� ��� ��ٱ��Ͽ� �߰��ϱ�">
			</fieldset>
		</div>
		<div class="col-sm-5"
			style="background-color: lavenderblush; height: 800px;">
						<h4>�ְ� �Ĵ� �߰�</h4>

			<div>
				<input type="radio" name="time" value="��ħ">��ħ 
				<input type="radio" name="time" value="����">���� 
				<input type="radio" name="time"	value="����">����
				<br /> <input type="button" value="Į�θ� Ȯ���ϱ�">
			</div>
			<div>
				<span>����Ǵ� Į�θ�</span> <strong>1200</strong> <span>kcal</span>
			</div>
			<input type="submit" value="�Ĵܿ� �߰��ϱ�">
		</div>
	</div>
	
</body>
</html>