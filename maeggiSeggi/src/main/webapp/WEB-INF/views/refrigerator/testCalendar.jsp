<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
//오늘 날짜의 Date 객체를 생성합니다.
const today = new Date();
//달력 데이터를 가공하는 함수를 만듭니다.
const setCalendarData = (year, month)=>{...}
//이번 달의 몇번 째 날짜인지 구하는 함수를 만듭니다.
const setFixDayCount = number => {
  let fixNum = "";
      if (number <= 10) {
        fixNum = "0" + (number - 1);
      } else {
        fixNum = number - 1;
      }
      return fixNum;
};
//달력 데이터를 가공하는 함수에 년,월을 인자로 넘겨주어 실행합니다.
if (today.getMonth() + 1 < 10) {
  setCalendarData(today.getFullYear(), "0" + (today.getMonth() + 1));
} else {
  setCalendarData(today.getFullYear(), "" + (today.getMonth() + 1));
}
</script>
</head>
<body>
	<div class="col-12" >
		
	</div>
</body>
</html>