<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	 var day = new Date();//���� ��¥//�� ��ǻ�� ������ �������� today�� Date ��ü�� �־���
    var date = new Date();//today�� Date�� �����ִ� ����
    day.setDate(day.getDate()-day.getDate());
    function prevCalendar() {//���� ��
     today = new Date(day.getFullYear(), day.getMonth() - 1, day.getDate());
     buildCalendar(); //�޷� cell ����� ��� 
    }

    function nextCalendar() {//���� ��
         day = new Date(day.getFullYear(), day.getMonth() + 1, day.getDate());
         buildCalendar();//�޷� cell ����� ���
    }
    function buildCalendar(){//���� �� �޷� �����
        var doMonth = new Date(day.getFullYear(),day.getMonth(),1);
        var lastDate = new Date(day.getFullYear(),day.getMonth()+1,0);
        var tbCalendar = document.getElementById("calendar");
        //��¥�� ���� ���̺� ���� ����, �� ���� �� ����
        var tbCalendarYM = document.getElementById("tbCalendarYM");
         tbCalendarYM.innerHTML = day.getFullYear() + "�� " + (day.getMonth() + 1) + "��"; 
		
   
         
         //while�� �̹����� ������ �����޷� �Ѱ��ִ� ����//
        while (tbCalendar.rows.length > 2) {
        //���� ������
        //�⺻ �� ũ��� body �κп��� 2�� �����Ǿ� �ִ�.
              tbCalendar.deleteRow(tbCalendar.rows.length-1);
              //���̺��� tr ���� ��ŭ�� �� ������ -1ĭ ������� 
            //30�� ���ķ� �����޿� ������� ���� ��� �̾�����.
         }
         var row = null;
         row = tbCalendar.insertRow();
         //���̺� ���ο� �� ����//��, �ʱ�ȭ
         var cnt = 0;// count, ���� ������ �����ִ� ����
        // 1���� ���۵Ǵ� ĭ�� ���߾� ��
         for (i=0; i<doMonth.getDay(); i++) {
         /*�̹����� day��ŭ ����*/
              cell = row.insertCell();//�� ��ĭ��ĭ ��� ������ִ� ����
              cnt = cnt + 1;//���� ������ ��� �������� ��ġ�ϰ� ���ִ� ����
         }
        /*�޷� ���*/
         for (i=1; i<=lastDate.getDate(); i++) { 
        	 
              cell = row.insertCell();//�� ��ĭ��ĭ ��� ������ִ� ����
              cell.innerHTML = i;//���� 1���� ������ day���� HTML ������ �־���
              cnt = cnt + 1;//���� ������ ��� �������� ��ġ�ϰ� ���ִ� ����
          if (cnt % 7 == 1) {/*�Ͽ��� ���*/
              //1������ 7�� �̹Ƿ� �Ͽ��� ���ϱ�
              //��ȭ����������� 7�� �������� �������� 1�̸� cnt�� 1��°�� ��ġ���� �ǹ��Ѵ�
            cell.innerHTML = "<font color=#F79DC2>" + i
            //1��°�� cell���� ��ĥ
        }    
          if (cnt%7 == 0){/* 1������ 7�� �̹Ƿ� ����� ���ϱ�*/
              //��ȭ����������� 7�� �������� �������� 0�̸� cnt�� 7��°�� ��ġ���� �ǹ��Ѵ�
              cell.innerHTML = "<font color=skyblue>" + i
              //7��°�� cell���� ��ĥ
               row = calendar.insertRow();
               //����� ������ �� ���� �߰�
          }
          /*������ ��¥�� ����� ĥ�ϱ�*/
          if (day.getFullYear() == date.getFullYear()
             && day.getMonth() == date.getMonth()
             && i == date.getDate()) {
              //�޷¿� �ִ� ��,�ް� �� ��ǻ���� ���� ��,���� ����, ���� ������ �ϰ� ������
            cell.bgColor = "#FAF58C";//���� ������ ������� 
           }
         }
    }
</script>
</head>
<body>
<p></p>
<h3 align="center">��Jerry�� �޷¡�</h3>
<table id="calendar" border="3" align="center" style="border-color:#3333FF ">
<tr><!-- label�� ���콺�� Ŭ���� ���ϰ� ���� -->
    <td><label onclick="prevCalendar()"><</label></td>
    <td align="center" id="tbCalendarYM" colspan="5">
    yyyy�� m��</td>
    <td><label onclick="nextCalendar()">>
        
    </label></td>
</tr>
<tr>
    <th align="center"><font color ="#F79DC2">��</th>
    <th align="center">��</th>
    <th align="center">ȭ</th>
    <th align="center">��</th>
    <th align="center">��</th>
    <th align="center">��</th>
    <th align="center"><font color ="skyblue">��</th>
</tr> 
</table>
<script language="javascript" type="text/javascript">
buildCalendar();
</script>
</body>
</html>