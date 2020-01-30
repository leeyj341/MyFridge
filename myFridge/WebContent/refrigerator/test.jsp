<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7786ca578eabcf447df71f78399388e&libraries=services"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var map;
	var container;
	window.onload = function() {
		//���� ��ġ ��� ���� ����
		createMap();
		//�˻��� �� �θ� �ݹ��Լ�
		document.getElementById("sendKey").onclick = searchRestaurantOnMap;
	}
	
	function createMap() {
		//������ ���� ������ DOM ���۷���
		container = document.getElementById('map'); 
		if (navigator.geolocation) {
			//���� ��ġ �������� map �߽� ��ǥ ����
			navigator.geolocation.getCurrentPosition(function(pos) {
				var lat = pos.coords.latitude;
				var lon = pos.coords.longitude;
				
				var options = { //������ ������ �� �ʿ��� �⺻ �ɼ�
						center : new kakao.maps.LatLng(lat, lon),	//������ �߽���ǥ.
						level : 3									//������ ����(Ȯ��, ��� ����)
					};
				
				map = new kakao.maps.Map(container, options); 		//���� ���� �� ��ü ����
				
				//��Ŀ�� ����� �̹��� ���
				var imageSrc = '../images/myPin.png';
				var imageSize = new kakao.maps.Size(54,59);
				var imageOption = {offset: new kakao.maps.Point(17, 59)};
				
				// ����� �̹��� �������� ��Ŀ�̹��� ����
				var markerImg = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
			    
			    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: new kakao.maps.LatLng(lat, lon),
			        image: markerImg
			    });
			    
				marker.setMap(map);
			});
		}	
	}
	
	function searchRestaurantOnMap() {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(pos) {
				var lat = pos.coords.latitude;
				var lon = pos.coords.longitude;

				var locPosition = new kakao.maps.LatLng(lat, lon);
				
				// ���̺귯���� ��ϵ� ��� �ҷ�����
				var ps = new kakao.maps.services.Places();
				
				//ã�� Ű����
				var key = document.getElementById("keyword").value;
				
				//���� �߽� ��ǥ�� ��������, 2000m �ݰ� �̳�, Ű���� �˻�
				ps.keywordSearch(key, placesSearchCB, {
					location: locPosition,
					radius: 2000
				});

				// ���� �߽���ǥ�� ������ġ�� �����մϴ�
				map.setCenter(locPosition);
				map.setLevel(6);
			});
			
		}
	}
	
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	    	for (var i = 0; i < data.length; i++) {
	    		displayMarkers(data[i]);
			}      
	    } 
	}
	
	// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
	function displayMarkers(place) {
		
		//��Ŀ�� ����� �̹��� ���
		var imageSrc = '../images/pin.png';
		var imageSize = new kakao.maps.Size(54,59);
		var imageOption = {offset: new kakao.maps.Point(17, 59)};
		
		// ����� �̹��� �������� ��Ŀ�̹��� ����
		var markerImg = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	    
	    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x),
	        image: markerImg
	    });
	    
		marker.setMap(map);

	    /* // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
	    kakao.maps.event.addListener(marker, 'click', function() {
	        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    }); */
	}
</script>
</head>
<body>
	<div id="map" style="width:500px; height: 400px;"></div>
	<input id="keyword" style="height: 50px;"/>
	<button id="sendKey" value="�˻�" style="width: 100px; height: 50px;">�˻�</button>
	<div id="latitude" ></div>
	<div id="longitude" style="display:none;"></div>
</body>
</html>