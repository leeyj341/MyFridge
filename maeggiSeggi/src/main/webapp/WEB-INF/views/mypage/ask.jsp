<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Title -->
    <title>Yummy Blog - Food Blog Template</title>
    
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- Core Stylesheet -->
    <link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>
<body>
    <% ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list"); %>
    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" style="background-image: url(img/bg-img/breadcumb.jpg); z-index: 0">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>1:1 문의사항</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">MyPage</li>
                            <li class="breadcrumb-item active" aria-current="page">1:1 문의사항</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
    
    <!-- 1:1 ask area start -->
    <div id="ask">
    <div>
        <fieldset style="text-align: center;">
            <legend>게시글 검색</legend>
            <div class="">
                <div class="">
                    <span>전체</span>
                    <strong>1</strong>
                    <span>건</span>
                </div>
                
            <form action="/erp/board/search.do">
            <select name="tag">
                <option value="title" selected="selected">제목</option>
                <option value="regidate">등록 일자</option>
                <option value="answer_status">답변상태</option>
            </select> <input type="text" name="search" /> 
                <input type="submit" value="검색">
                <a href="/maeggiSeggi/board/insert.do" style="color:white; background-color: #fc6c3f; width: 100px;">글쓰기</a>
            </form>
            </div>
        </fieldset>
        <p></p>
    </div>
        <div>
            <table id ="table_boardlist" border="1" style="width: 800px; height: 100px; text-align: center;margin-left: auto; margin-right: auto;">
                <thead>
                <tr style="font-weight: bold;">
                    <td scope="col">No</td>
                    <td scope="col">제목</td>
                    <td scope="col">등록일자</td>
                </tr>
                </thead>
                <tbody>
                <%for(int i=0;i<list.size();i++) {
                BoardVO row = list.get(i);
                %>
                    <tr>
                        <td><%= row.getAsk_id() %></td>
                        <td><a href="/maeggiSeggi/board/read.do?board_no=<%= row.getAsk_id() %>"><%= row.getAsk_title()%></a></td>
                        <td><%= row.getAsk_regdate() %></td>
                    </tr>
                <%}%>
                </tbody>
            </table>
        </div>
            <div>                    
                <div class="pagination-area d-sm-flex mt-15" style="width: 300px; margin-left: auto; margin-right: auto;">
                        <nav aria-label="#">
                            <ul class="pagination">
                                <li class="page-item active">
                                    <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </nav>
                 </div>
             </div>
    </div>
    <p></p>
    <!-- 1:1 ask area end -->
    
    
</body>