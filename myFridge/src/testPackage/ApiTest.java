package testPackage;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;

public class ApiTest {
    public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1470000/FoodAdtvInfoService/getFoodAdtvInfoList"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("zyL%2FKzIkUfFOm3Pdo%2B1N90s1sCmBcYNpjLvBVKi6stY5lcTlH5CH6w4Gj82KdeNGFv60uhbWh1bZN%2FKIq0VTnA%3D%3D", "UTF-8")); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("prdlst_cd","UTF-8") + "=" + URLEncoder.encode("C0118010300000", "UTF-8")); /*ǰ���ڵ�*/
        urlBuilder.append("&" + URLEncoder.encode("pc_kor_nm","UTF-8") + "=" + URLEncoder.encode("��.ä����", "UTF-8")); /*ǰ���ѱ۸�*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*��������ȣ*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("3", "UTF-8")); /*�� ������ ��� ��*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
    }
}