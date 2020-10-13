<%@page import="com.en.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member loginMember=(Member)session.getAttribute("loginMember");
	String a="";
	try{
	a=loginMember.getMemberId();
	}catch(NullPointerException e){
	a="1";
	}
	System.out.println(a);
	String cPath=request.getContextPath();
	String login=request.getContextPath()+"/view/loginAlert.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ensalad</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/test.css">
<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
<!-- Menubar -->
<script src="<%=request.getContextPath() %>/js/menuBar.js"></script>	
</head>
<body>
    <!--<div class="swiper-container">
        <div class="swiper-wrapper"> -->
    <header id="headcap">
        <div id="logo"><img src="<%=request.getContextPath() %>/image/main/logo.png"
         alt="" width="90" height="70" onclick="location.replace('<%=request.getContextPath()%>')"></div>
        <div id="menu">
            <nav>
                <!-- 관리자 로그인시 -->

                <ul>
                 <%if(loginMember!=null && loginMember.getMemberId().equals("admin")){ %>
                    <li><a href="<%=request.getContextPath()%>/product/productAll">관리자전용 메뉴</a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/admin/memberAll">회원관리</a></li>
                            <li><a href="">상품관리</a></li>
                            <li><a href="<%=request.getContextPath()%>/inquiry">1:1문의 답변</a></li>
                        </ul>
                    </li>
                    <%} %>
                    <li><a href="<%=request.getContextPath()%>/product/productAll">전체메뉴</a>
                    	<ul>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=비건">비건</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=육류">육류</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=해산물">해산물</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=유제품">유제품</a></li> 
                        </ul>
                    </li>
                    <li><a href="">커스텀</a>
                        <ul>
                        	<li><a href="<%=request.getContextPath()%>/view/custom/custom2.jsp">커스텀하기</a></li>
                            <li><a href="<%=request.getContextPath()%>/custom/customList">커뮤니티</a></li>
                        </ul>
                    </li>
                    <li><a href="#">매장찾기</a>
                        <ul>
                            <li><a href="">주소검색</a></li>
                            <li><a href="">매장찾기</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/searchNotice">고객센터</a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/searchNotice">공지사항</a></li>
                            <li><a href="<%=request.getContextPath()%>/event/eventList">이벤트</a></li>
                            <li><a href="<%=request.getContextPath()%>/FAQ/FAQboard">FAQ</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=!a.equals("1")?cPath+"/view/MyPage/mypageAll.jsp":login%>">마이페이지</a>
                        <ul>
                            <li><a href="<%=!a.equals("1")?cPath:login%>">장바구니</a></li>
                            <li><a href="<%=!a.equals("1")?cPath:login%>">배송현황</a></li>
                            <li><a href="<%=!a.equals("1")?cPath:login%>">나의 커스텀</a></li>
                            <li><a href="<%=!a.equals("1")?cPath+"/inquiry/searchInquiryMem?no="+loginMember.getUser_no():login%>">1:1문의</a></li>
                        </ul>
                    </li>
<%--                  <%}else if(loginMember!=null){ %>
                 	<li><a href="<%=request.getContextPath()%>/product/productAll">전체메뉴</a>
                        <ul>
                             <li><a href="<%=request.getContextPath()%>/product/productAll?type=비건">비건</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=육류">육류</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=해산물">해산물</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=유제품">유제품</a></li> 
                        </ul>
                    </li>
                    <li><a href="">커스텀</a>
                        <ul>
                            <li><a href="#">이용안내</a></li>
                            <li><a href="<%=request.getContextPath()%>/view/custom/custom2.jsp">커스텀하기</a></li>
                            <li><a href="<%=request.getContextPath()%>/custom/customList">커뮤니티</a></li>
                        </ul>
                    </li>
                    <li><a href="#">매장찾기</a>
                        <ul>
                            <li><a href="*">주소검색</a></li>
                            <li><a href="">매장찾기</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/searchNotice">고객센터</a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/searchNotice">공지사항</a></li>
                            <li><a href="<%=request.getContextPath()%>/event/eventList">이벤트</a></li>
                            <li><a href="<%=request.getContextPath()%>/FAQ/FAQboard">FAQ</a></li>
                        </ul>
                    </li>
<<<<<<< HEAD
                 	<li><a href="<%=request.getContextPath()%>/view/MyPage/mypageAll.jsp">마이페이지</a>
=======
                 	<li><a href="<%=request.getContextPath()%>/view/MyPage/myInformation/modifyInformation.jsp">마이페이지</a>
>>>>>>> branch 'develop' of https://github.com/ui0426/EnsaladTeam.git
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/basket/basketView">장바구니</a></li>
                            <li><a href="#">배송현황</a></li>
                            <li><a href="#">나의 게시물</a></li>
                            <li><a href="#">나의 커스텀</a></li>
                            <li><a href="<%=request.getContextPath()%>/inquiry/searchInquiryMem?no=<%=loginMember.getUser_no()%>">1:1문의</a></li>
                        </ul>
                    </li>
                 <%} else { %> <!-- 로그인 안되어 있으면 로그인 하라고 해야함.... -->
                 	<li><a href="<%=request.getContextPath()%>/product/productAll">전체메뉴</a>
                        <ul>
                             <li><a href="<%=request.getContextPath()%>/product/productAll?type=비건">비건</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=육류">육류</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=해산물">해산물</a></li>
                            <li><a href="<%=request.getContextPath()%>/product/productAll?type=유제품">유제품</a></li> 
                        </ul>
                    </li>
                    <li><a href="">커스텀</a>
                        <ul>
                            <li><a href="#">이용안내</a></li>
                            <li><a href="<%=request.getContextPath()%>/view/custom/custom2.jsp">커스텀하기</a></li>
                            <li><a href="<%=request.getContextPath()%>/custom/customList">커뮤니티</a></li>
                        </ul>
                    </li>
                    <li><a href="#">매장찾기</a>
                        <ul>
                            <li><a href="">주소검색</a></li>
                            <li><a href="">매장찾기</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/searchNotice">고객센터</a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/searchNotice">공지사항</a></li>
                            <li><a href="<%=request.getContextPath()%>/event/eventList">이벤트</a></li>
                            <li><a href="<%=request.getContextPath()%>/FAQ/FAQboard">FAQ</a></li>
                        </ul>
                    </li>
<<<<<<< HEAD
                 	<li><a href="<%=request.getContextPath()%>/view/MyPage/mypageAll.jsp">마이페이지</a>
=======
                 	<li><a href="*">마이페이지</a>
>>>>>>> branch 'develop' of https://github.com/ui0426/EnsaladTeam.git
                        <ul>
                            <li><a href="#">장바구니</a></li>
                            <li><a href="#">배송현황</a></li>
                            <li><a href="#">나의 게시물</a></li>
                            <li><a href="#">나의 커스텀</a></li>
                            <li><a href="#">1:1문의</a></li>
                        </ul>
                    </li> --%>
                </ul>
            </nav>
        </div>
        <div id="loginjoin">
        <%if(loginMember==null) {%>
            <ul>
                <li><a href="<%=request.getContextPath()%>/view/login.jsp">login</a></li>
                <li><a href="<%=request.getContextPath()%>/view/join.jsp">join</a></li>
            </ul>
            <%}else{%>
            <ul>
            	<li><a href="<%=request.getContextPath()%>/logout.do">logOut</a></li>
            </ul>
            <%} %>
        </div>
    </header>
    
    <div id="div_"></div>
 
    <style>
    	#div_{
    		width:1187.200px;
    		height:75.600px;
    	}
    </style>
