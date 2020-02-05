<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
 <head>
  <meta charset="UTF-8"> 
  <title>Document</title>

  <style>
    textarea {width:350px; height:300px; float:left}
    .btnGroup {
        float:left ;
        padding: 25px;
    }
  </style>
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  <script>

  
    // ���浵 -> GridXY
    function fnLatLon2XY() {
        var strLatLon = $.trim($("#taLatLon").val());
        if(!strLatLon) { alert("���浵 �����͸� �Է��Ͽ� �ֽʽÿ�."); return;}
        var lines = strLatLon.split(String.fromCharCode(10)); //�ٴ����� ����
        var strXY = "";
        for(var i = 0, len = lines.length; i < len; i++) {
            if(lines[i] == "") continue; //������ �����ϰ� ���
            var latlon = lines[i].split(",");
            var lat = latlon[0], lon = latlon[1];
            if(!lat||!lon||isNaN(lat)||isNaN(lon)) {
                alert("���� ���� �ƴϰų� ������ ������ ���� �ʽ��ϴ�.");
                return;
            }
            var xy = dfs_xy_conv("toXY", lat, lon);
            strXY += xy.x + ", " + xy.y + String.fromCharCode(10);
        }
        
        $('#taXY').val(strXY);

    }
    // ���浵 <- GridXY
    function fnXY2LatLon() {

        var strXY = $.trim($("#taXY").val());
        if (! strXY) { alert ("Grid XY �����͸� �Է��Ͽ� �ֽʽÿ�."); return; }
  
        var lines = strXY.split(String.fromCharCode(10));
        var strLatLon = "";
        for(var i = 0, len = lines.length; i < len; i++) {
            if (lines[i] == '')  continue;       
    
            var xy = lines[i].split(",");
            var x = xy[0], y = xy[1];
            if (!x || !y || isNaN(x) || isNaN(y)) {
                alert("���� ���� �ƴϰų� ������ ������ ���� �ʽ��ϴ�.");
                return;
            }
    
            var ll = dfs_xy_conv("toLL", x, y);
            strLatLon += ll.lat + ", " + ll.lng + String.fromCharCode(10);
    
        }  
        $("#taLatLon").val(strLatLon);
    }

    //----------------------------------------------------------
    // ���û Ȩ���������� ������ ��ȯ �Լ�
    //
    // LCC DFS ��ǥ��ȯ�� ���� ���� �ڷ�
    //
    var RE = 6371.00877; // ���� �ݰ�(km)
    var GRID = 5.0; // ���� ����(km)
    var SLAT1 = 30.0; // ���� ����1(degree)
    var SLAT2 = 60.0; // ���� ����2(degree)
    var OLON = 126.0; // ������ �浵(degree)
    var OLAT = 38.0; // ������ ����(degree)
    var XO = 43; // ������ X��ǥ(GRID)
    var YO = 136; // ��1���� Y��ǥ(GRID)

// LCC DFS ��ǥ��ȯ ( code : 
//          "toXY"(���浵->��ǥ, v1:����, v2:�浵), 
//          "toLL"(��ǥ->���浵,v1:x, v2:y) )
//

    function dfs_xy_conv(code, v1, v2) {
        var DEGRAD = Math.PI / 180.0;
        var RADDEG = 180.0 / Math.PI;
        
        var re = RE / GRID;
        var slat1 = SLAT1 * DEGRAD;
        var slat2 = SLAT2 * DEGRAD;
        var olon = OLON * DEGRAD;
        var olat = OLAT * DEGRAD;
        
        var sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
        var sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
        var ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
        ro = re * sf / Math.pow(ro, sn);
        var rs = {};
        if (code == "toXY") {
            rs['lat'] = v1;
            rs['lng'] = v2;
            var ra = Math.tan(Math.PI * 0.25 + (v1) * DEGRAD * 0.5);
            ra = re * sf / Math.pow(ra, sn);
            var theta = v2 * DEGRAD - olon;
            if (theta > Math.PI) theta -= 2.0 * Math.PI;
            if (theta < -Math.PI) theta += 2.0 * Math.PI;
            theta *= sn;
            rs['x'] = Math.floor(ra * Math.sin(theta) + XO + 0.5);
            rs['y'] = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
        }
        else {
            rs['x'] = v1;
            rs['y'] = v2;
            var xn = v1 - XO;
            var yn = ro - v2 + YO;
            ra = Math.sqrt(xn * xn + yn * yn);
            if (sn < 0.0) - ra;
            var alat = Math.pow((re * sf / ra), (1.0 / sn));
            alat = 2.0 * Math.atan(alat) - Math.PI * 0.5;
            
            if (Math.abs(xn) <= 0.0) {
                theta = 0.0;
            }
            else {
                if (Math.abs(yn) <= 0.0) {
                    theta = Math.PI * 0.5;
                    if (xn < 0.0) - theta;
                }
                else theta = Math.atan2(xn, yn);
            }
            var alon = theta / sn + olon;
            rs['lat'] = alat * RADDEG;
            rs['lng'] = alon * RADDEG;
        }
        return rs;
    }

  </script>

 </head>
 <body>    
    <textarea id="taLatLon" >37.579871128849334, 126.98935225645432
35.101148844565955, 129.02478725562108
33.500946412305076, 126.54663058817043</textarea>
    <div class="btnGroup">
        <button onclick="fnLatLon2XY()">���浵 -> GridXY</button><br/><br/>
        <button onclick="fnXY2LatLon()">���浵 &lt;- GridXY</button>
    </div>

    <textarea id="taXY"></textarea>
  
 </body>
</html>
