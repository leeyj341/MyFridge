<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d7c85ec8ac4926cd10a52316a3d93e67"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
window.onload = function() {
	showLocation();
}

function showLocation() {
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	if(navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(pos) {
			var options = { //지도를 생성할 때 필요한 기본 옵션
					center: new kakao.maps.LatLng(pos.coords.latitude, pos.coords.longitude), //지도의 중심좌표.
					level: 3 //지도의 레벨(확대, 축소 정도)
				};

				var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴	
		});

	}
}

</script>
</head>
<body>
	<div id="map" style="width:500px; height: 400px;"></div>
	<div id="latitude" ></div>
	<div id="longitude" style="display:none;"></div>
</body>
</html>