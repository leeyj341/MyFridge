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
        urlBuilder.append("&" + URLEncoder.encode("prdlst_cd","UTF-8") + "=" + URLEncoder.encode("C0118010300000", "UTF-8")); /*품목코드*/
        urlBuilder.append("&" + URLEncoder.encode("pc_kor_nm","UTF-8") + "=" + URLEncoder.encode("과.채음료", "UTF-8")); /*품목한글명*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("3", "UTF-8")); /*한 페이지 결과 수*/
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