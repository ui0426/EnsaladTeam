<%@page import="oracle.net.aso.b"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.en.basket.model.vo.Basket,java.util.List,java.text.DecimalFormat"%>
<%@include file="/view/common/header.jsp"%>
<%
	DecimalFormat formatter=new DecimalFormat("###,###");//숫자 3자리마다 ,표시해주는 클래스
	List<Basket> list=(List)request.getAttribute("list");
	int totalPrice=0;
	
	for(Basket b : list){
		totalPrice+=b.getMount()*b.getPrice();
		
	}
	
%>
<section>
 <form method="post" id="moveorder" action="<%=request.getContextPath()%>/order/productOrder">
    <div class="basket">
    	<div class="orderHeader">
        <label class="basket" style="margin-left:120px"><h2>장바구니</h2></label>
        <ul class="orderState">
        	<li class="order1">01 장바구니</li>
        	<li class="order2">02 주문서</li>
        	<li class="order3">03 주문완료</li>
        </ul>
        </div> 
        <hr class="header-line">
        <!-- 상품 정보 -->
        <div id="cartList">
            <!-- 상품 선택 -->
            <div id="cartList-children">
                <!-- 상품 상세 내용 -->
                <div id="productContent">
                    <table class="basketTable">
                        <caption style="text-align: center;font-weight:bold">장바구니 담긴상품 목록</caption>
                        <thead>
                            <tr>
                                <th>사진</th>
                                <th>제품 정보</th>
                                <th>수량</th>
                                <th>배송비</th>
                                <th>가격</th>
                                <th>비고</th>
                            </tr>
                        </thead>
                          <form method="post" id="moveorder" action="<%=request.getContextPath()%>/order/productOrder">
                            <tbody class="basketList">
        					<% for(Basket b : list) {%>
                                <tr>
                                    <!-- 사진 -->
                                    <td>
	                                    <input type="hidden" class="b-No" name="basketNo" value="<%=b.getBasketNo() %>">
	                                	<input type="hidden" class="p-No" name="productNo" value="<%=b.getProductNo() %>">  
                                            <img src="<%=request.getContextPath()+b.getProductThumbnail() %>" alt="">
                                    </td>
                                    <!-- 제품정보 -->
                                    <td>
                                            <p class="p-info"><%=b.getProductName()%></p>
                                            <p class="p-info"><%=b.getProductContent() %></p>
                                    </td>
                                    <!-- 수량 -->
                                    <td>
                                       수량 : 
                                       		<input type="button" value=" - " class="del">
                                            <input type="text" class="amount" name="amount" value="<%=b.getMount() %>" size="3" style="text-align:center;">
                                            <input type="button" value=" + " class="add"><br>
                                            금액 :    <i class=sum><%=formatter.format(b.getPrice()*b.getMount()) %></i>원      
                                            <%--  <i class=sum><%=b.getPrice()*b.getMount() %></i>  --%>
                                    </td>
                                    <!-- 배송비 -->
                                    <td>
                                            <span>[기본 배송조건]</span>
                                    </td>
                                    <!-- 가격 -->
                                    <td><i class="price"><%=formatter.format(b.getPrice())%></i>원</td>
                                    <!-- 비고 -->
                                    <td>
                                          <p class="remove">삭제</p> 
                                    </td>
                                </tr>
                                <%} %>
                                 </tbody> 
                      	    </form>
                         <tfoot> 
                            <tr>
                                <td colspan="6">
                                 총 상품가격<i class="total-price"></i>원
                                </td>
                            </tr>
                         </tfoot> 
                    </table>
                    <div class="moveorder">
                        <button class="moveBtn" form="moveorder">주문하기</button>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<style>

	img{
		width:100px;
		height:100px;
	}
	.header-line{
	   	margin-top:0px;
	   	margin-bottom:15px;
	   	border-color:lightgray;
	   	background-color:lightgray;
	   	color:lightgray;
	   	opacity: 0.2;
	   	}
	.order1{
      		background-color:green;
      		color:white;
      	}
   	.orderHeader{
   		display:flex;
   		justify-content: space-between;
   	}
   	.orderState{
   		margin-right:120px;
   		display:flex;
   		list-style:none;
   	}
   	.orderState>li{
	   	border:lightgray 1px solid;
	   	border-radius:10px;
	   	padding: 10px 15px 11px 15px;
	   	font-weight: bold;
	   	text-align: center;
	   	height:43px;
   	}
	.p-info{
		margin:30px;
	}
	
	.amount{
		border: 0;
		height:42px;
	}
	.moveorder{
		
		 display: flex; 
		 justify-content: center; 
	}
	.moveBtn{
		border:3px green solid;
        background-color: white;
        color: green;
        width: 250px;
        height: 70px;
        margin-left: 30px;
        cursor: pointer;
        border-top-left-radius:10px;
	    border-bottom-left-radius:10px;
	    border-top-right-radius:10px;
	    border-bottom-right-radius:10px;
	}
	.moveBtn:hover{
       background: green;
       color: white;
    }
		.total-price,.sum,.price{
	    font-size: 20px;
	    font-weight: bold;
	    font-style: normal;
	    }
	.del,.add{
	      border:1px solid limegreen;
	      color: limegreen;
	      background-color:rgba(0,0,0,0);
	      padding:10px;
	      cursor: pointer;
	   }    
	   .del:hover,.add:hover{
	      color:white;
	      background-color:lightgreen;
	   }
	   .del{
	      border-top-left-radius:5px;
	      border-bottom-left-radius:5px;
	      margin-right:-1.5px;
	      margin-left:15px;
	   }
	   .add{
	      border-top-right-radius:5px;
	      border-bottom-right-radius:5px;
	      margin-left:-3px;
	   }
    .basket{
        /* margin-top: 50px;
        margin-bottom: 50px; */
    }
    td{
        border: lightgray 1px solid;
        
    }
	#cartList-children{
        width: 100%;
        height: 100%;
       /*  border: 1px red solid; */
        display: flex; 
        
    }
    #productContent{	
        width: 100%;
      /*   border: 1px blueviolet solid; */
        
        
    }
    .basketTable{
    	width:90%;
        text-align: center;
        margin: auto;
        border-collapse: collapse;
    }
    tr{
    	height:165px;
    }
    
    
</style>

<script>
	
     var prices=$(".price");//가격클래스명들 배열
     var sums=$(".sum");//수량 * 금액 클래스명들 배열
     var amounts=$(".amount");//수량 클래스명들의 배열
     var adds=$(".add");//더하기버튼 클래스명들의 배열
     var dels=$(".del");//빼기버튼 클래스명들의 배열
     var removes=$(".remove");//삭제버튼 클래스명들의 배열
     var productNos=$(".p-No");//상품번호 클래스명들의 배열
     var basketNos=$(".b-No");//장바구니번호 클래스명들의 배열 
     var total_price=0;
     
   	    $(".amount").keyup(e=>{
   	    	for(var i=0;i<amounts.length;i++){
   	    		if(e.target==amounts[i]){
     				if(amounts[i].value=amounts[i].value.replace(/[^0-9]/g, '')){
     					sums[i].textContent=($(e.target).val()*parseInt(prices[i].textContent.replace(/,/g, ""))).toLocaleString();
     					total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
     	 		}
   	    	}else{
    			total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
    			
    		}  
   	    }
   	    
   	     $(".total-price")[0].textContent=(total_price).toLocaleString();
 		total_price=0;
     });   
     $(".amount").blur(e=>{
    		    for(var i=0;i<amounts.length;i++){
    			  if($(e.target).val()==0&&e.target==amounts[i]){
    				 $(e.target).val(1);
    	    		  sums[i].textContent=($(e.target).val()*parseInt(prices[i].textContent.replace(/,/g, ""))).toLocaleString(); 
    	    		  total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
    			 }else{
    	    			total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
    	    			
    	    		} 
    		 }
    		    $(".total-price")[0].textContent=(total_price).toLocaleString();
        		total_price=0;
     });
    //수량 버튼 클릭시 태그 색변경
    $(".amount").focus(e=>{
    	$(e.target).css("outline-color","#27b06e");
	});
     
     var totalPrice="<%=formatter.format(totalPrice) %>";//처음 총 구매금액
     $(document).ready(function(){
         $(".total-price").html(totalPrice);//onload로 페이지 처음에 처음 총 구매금액을 보여줌
     });
   
   
   	  
    	$(".add").click(e=>{
    	for(var i=0;i<prices.length;i++){
    		if(e.target==adds[i]){//for문 이용하여 클릭이벤트 발생한 e.target과 더하기버튼이 같은것을 찾는다
    			hm=amounts[i];
        		hm.value++; 
        		sums[i].textContent = (parseInt(hm.value) * parseInt(prices[i].textContent.replace(/,/g, ""))).toLocaleString();//수량*가격 곱한후에 콤마붙여줌
        		total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
        		//toLocaleString()함수는 숫자3자리마다 콤마를 붙여주고 replace(/,/g, "")는 콤마를 없애줌
    		}else{
    			total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
    			
    		}
    		 }
    		
    		$(".total-price")[0].textContent=(total_price).toLocaleString();
    		total_price=0;
    	});
	     $(".del").click(e=>{
	     	for(var i=0;i<prices.length;i++){
	     		if(e.target==dels[i]){//발생버튼과 같은인덱스
	     			hm=amounts[i];
	         		if(hm.value>1){
	         			hm.value--; 
		         		sums[i].textContent = (parseInt(hm.value) * parseInt(prices[i].textContent.replace(/,/g, ""))).toLocaleString();
		         		total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
	        		}else{//해당인덱스이지만 수량이1일때
	        			total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
	        		}
	        	}else{
        			total_price+=parseInt(sums[i].textContent.replace(/,/g, ""));
	     		}
	     	}
	     	$(".total-price")[0].textContent=(total_price).toLocaleString();
	     	total_price=0;
	     	}); 
	   //장바구니 목록 삭제
	   var productNo;
  	   var basketNo;
  	 	
        $(".remove").click(e =>{
    	 for(var i=0;i<prices.length;i++){
    		 if(e.target==removes[i]){
    			 productNo=productNos[i].value;
    			 basketNo=basketNos[i].value;
    		 }
    	 }
          $.ajax({
        	  url :"<%=request.getContextPath()%>/ajax/deleteBasket",
        	  data:{"productNo":productNo,"basketNo":basketNo},
        	  success:function(data){
        		     $("tbody").empty(); 
        		     $("tbody").html(data);  
        		   
        	  }
          }); 
       });   
</script>

<%@include file="/view/common/footer.jsp"%>