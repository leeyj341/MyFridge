<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="jquery.xdomainajax.js"></script>
 <script src="/maeggiSeggi/common/js/others/jquery-1.11.1.min.js"></script>
    <!-- Active JS -->
    <script src="/maeggiSeggi/common/js/jquery.xdomainajax.js"></script>
<script src="weather.js"></script>
<script type="text/javascript">
realTimeWeather();
function realTimeWeather() {
    
    var today = new Date();
    var week = new Array('��','��','ȭ','��','��','��','��');
    var year = today.getFullYear();
    var month = today.getMonth()+1;
    var day = today.getDate();
    var hours = today.getHours();
    var minutes = today.getMinutes();
 
    $('.weather-date').html(month +"�� " + day + "�� " + week[today.getDay()]+"����");
 
    /*
     * ���û 30�и��� ��ǥ
     * 30�к��� ������, �ѽð� �� hours ��
     */
    if(minutes < 30){
        hours = hours - 1;
        if(hours < 0){
            // ���� ������ ������ ���
            today.setDate(today.getDate() - 1);
            day = today.getDate();
            month = today.getMonth()+1;
            year = today.getFullYear();
            hours = 23;
        }
    }
    
    /* example
     * 9�� -> 09�� ���� �ʿ�
     */
    
    if(hours < 10) {
        hours = '0'+hours;
    }
    if(month < 10) {
        month = '0' + month;
    }    
    if(day < 10) {
        day = '0' + day;
    } 
 
    today = year+""+month+""+day;
    
    /* ��ǥ */
    var _nx = 61, 
    _ny = 112,
    apikey = "bFLjSVwZpB%2BomeIbURaEI3jRNcEQ9j9jhqNnd2bDYYvybfq8qGRrA5zrU19E1b2w7TVtaw%2FZ%2BJhA5wZYDewN3g%3D%3D",    
    ForecastGribURL = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst";
    ForecastGribURL += "?ServiceKey=" + apikey;
    ForecastGribURL += "&base_date=" + today;
    ForecastGribURL += "&base_time=" + hours +"00";
    ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
    ForecastGribURL += "&pageNo=1&numOfRows=7";
    ForecastGribURL += "&_type=json";
 
$.ajax({
    url: ForecastGribURL
    ,type: 'get'
    ,success: function(msg) {
 
       var text = msg.responseText,
       text = text.replace(/(<([^>]+)>)/ig,""); //HTML �±� ��� �������� ��ü
 text = '[' + text + ']';
       var json = $.parseJSON(text);
       
       var rain_state = json[0].response.body.items.item[1].obsrValue;
       var rain = json[0].response.body.items.item[3].obsrValue;
       var sky = json[0].response.body.items.item[4].obsrValue;
       var temperature = json[0].response.body.items.item[5].obsrValue;
       
       $('.weather-temp').html(temperature.toFixed(1) + " ��");
 $('#RN1').html("�ð��簭���� : "+ rain +"mm");
       
           if(rain_state != 0) {
               switch(rain_state) {
                   case 1:
                    $('.weather-state-text').html("��");
                       break;
                   case 2:
                       $('.weather-state-text').html("��/��");
                       break;
                   case 3:
                       $('.weather-state-text').html("��");
                       break;
               }
           }else {
               switch(sky) {
                   case 1:
                       $('.weather-state-text').html("����");
                       break;
                   case 2:
                       $('.weather-state-text').html("��������");
                       break;
                   case 3:
                    $('.weather-state-text').html("��������");
                       break;
                   case 4:
                    $('.weather-state-text').html("�帲");    
                       break;
                   }    
               } //if ����
        } //success func ����
    })    
}

</script>
</head>
<body>
	 <div class="vis-weather">
        <h2 class="vh_hide">��������</h2>
        <p class="weather-date"></p>
        <ul>
            <li class="weather-temp"></li>
            <li id="RN1">�ð��簭���� : ?</li>
            <li class="weather-state-text"></li>
        </ul>
    </div>
</body>
</html>