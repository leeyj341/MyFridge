<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script>
	// Ignore this in your implementation
	window.isMbscDemo = true;
</script>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="../common/css/fonts.css" rel="stylesheet">
<link rel="stylesheet" href="css/mobiscroll.javascript.min.css">
<script src="js/mobiscroll.javascript.min.js"></script>

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
			<div mbsc-page class="demo-week-view">
				<div mbsc-form>
					<div class="mbsc-form-group">
						<div class="mbsc-form-group-title">�ְ� �Ĵ� �߰�</div>
						<div id="demo-one-week" />
					</div>
				</div>
			</div>

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
	<script>

    // Use the settings object to change the theme
    mobiscroll.settings = {
        lang: 'en',            // Specify language like: lang: 'pl' or omit setting to use default
        theme: 'ios',          // Specify theme like: theme: 'ios' or omit setting to use default
        themeVariant: 'light'  // More info about themeVariant: https://docs.mobiscroll.com/4-10-2/javascript/calendar#opt-themeVariant
    };
    
    mobiscroll.calendar('#demo-one-week', {
        display: 'inline',     // Specify display mode like: display: 'bottom' or omit setting to use default
        weeks: 1,
        
    });

    mobiscroll.listview('.md-marked-list', {
        theme: 'ios',
        themeVariant: 'light',
        swipe: false
    });
    
   
</script>
</body>
</html>