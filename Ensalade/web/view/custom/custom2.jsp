<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/view/common/header.jsp"%>

<form name="test" method="get">
<section class="contents-wrap">
	<div class="customselect">
		<span><b>베이스 선택 </b></span><span><img
			src="<%=request.getContextPath() %>/image/downclick2.png" class="down"></span>
	</div>
	<hr>
	<div>
		<input type="checkbox" name="base" value="로메인,케일/5000"> 로메인, 케일
		5.0 <input type="checkbox" name="base" value="로메인,양배추/5000">
		로메인, 양배추 5.0 <input type="checkbox" name="base" value="로메인,치커리/5000">
		로메인, 치커리 5.0 <br> <input type="checkbox" name="base"
			value="로메인,적양배추/5000"> 로메인, 적양배추 5.0 <input type="checkbox"
			name="base" value="양배추,치커리/5000"> 양배추, 치커리 5.0
	</div>
	
	
	<div class="customselect">
		<span><b>토핑 선택</b></span><span><img
			src="<%=request.getContextPath() %>/image/downclick2.png" class="down"></span>
	</div>
	<hr>
	<div>
		<h5>THE GOODS</h5>
		<input type="checkbox" name="topping" value="로스트치킨/2500"> 로스트치킨 2.5 
		<input type="checkbox" name="topping" value="스파이시치킨/2500"> 스파이시치킨 2.5
		<input type="checkbox" name="topping" value="포크스테이크/3500"> 포크스테이크 3.5 
		<input type="checkbox" name="topping" value="로스트쉬림프/3500"> 로스트쉬림프 3.5 
		<input type="checkbox" name="topping" value="구운버섯믹스/2500"> 구운버섯믹스 2.5
	
		<h5>GREEN VEGGIES</h5>
		<input type="checkbox" name="topping" value="구운채소믹스/2500"> 구운채소믹스 2.5 
		<input type="checkbox" name="topping" value="구운고구마/2500"> 구운 고구마 2.5 
		<input type="checkbox" name="topping" value="옥수수/1000"> 옥수수 1.0 
		<input type="checkbox" name="topping" value="체리토마토/1500"> 체리토마토 1.5 
		<input type="checkbox" name="topping" value="블랙올리브/1000"> 블랙올리브 1.0
	
		<h5>CHEESE&FRUITS</h5>
		<input type="checkbox" name="topping" value="말린 크랜베리/1000">말린 크랜베리 1.0 
		<input type="checkbox" name="topping" value="사과/1000">사과 1.0 
		<input type="checkbox" name="topping" value="체다치즈/1000"> 체다치즈 1.0 
		<input type="checkbox" name="topping" value="그라나빠다노 치즈/2000"> 그라나빠다노치즈 2.0 
		<input type="checkbox" name="topping" value="으깬 계란/700"> 으깬 계란 0.7
	
		<h5>CRUNCH</h5>
		<input type="checkbox" name="topping" value="베이컨칩/1500"> 베이컨칩 1.5 
		<input type="checkbox" name="topping" value="크리스피 갈릭칩/1000"> 크리스피 갈릭칩 1.0 
		<input type="checkbox" name="topping" value="나쵸/500"> 나쵸 0.5 
		<input type="checkbox" name="topping" value="구운 아몬드/1000"> 구운아몬드 1.0 
		<input type="checkbox" name="topping" value="오트밀/1500"> 오트밀 1.5
	
		<h5>ETC</h5>
		<input type="checkbox" name="topping" value="트러플오일/1500"> 트러플오일 1.5 
		<input type="checkbox" name="topping" value="엑스트라버진올리브오일/1500"> 엑스트라버진올리브오일 1.5 
		<input type="checkbox" name="topping" value="앤쵸비/1500"> 앤쵸비 1.5
	</div>
	
	
	<div class="customselect">
		<span><b>드레싱 선택 </b></span><span><img src="<%=request.getContextPath() %>/image/downclick2.png" class="down"></span>
	</div>
	<hr>
	<div>
		<input type="checkbox" name="dressing" value="바질페스토/500"> 바질페스토 0.5 
		<input type="checkbox" name="dressing" value="시저소스/500"> 시저 소스 0.5 
		<input type="checkbox" name="dressing" value="크리미스리라차/500"> 크리미 스리라차 0.5 <br> 
		<input type="checkbox" name="dressing"value="애플사이다식초/500"> 애플사이다 식초 0.5 
		<input type="checkbox" name="dressing" value="식초 소금 후추/500"> 식초 소금 후추 0.5
	</div>
	
	
	<!-- 선택한 아이템들 나오는 div -->
	<div class="totalselect" style="overflow: auto; width: 500px; height: 150px;">
		<div class="print1">
			<h5>베이스</h5>
			
		</div>
	
		<div class="print2">
			<h5>토핑 (최대 몇개)</h5>
			<p>
				테<br>스<br>트<br>중<br>
			</p>
		</div>
	
		<div class="print3">
			<h5>드레싱</h5>
			<p>
				테<br>스<br>트<br>중<br>
			</p>
		</div>
		<div class="print4">
		
		</div>
	</div>
	
	<!-- 장바구니/주문하기 버튼 -->
	<div>
		<input type="button" value="장바구니" onclick="test1();"> 
		<input type="button" value="주문하기" onclick="test2();">
	</div>
	</form>

<script>


/* 재료선택 토글설정  */
	$(function(){
	$(".down").click(e=>{
		$(e.target).parent().parent().next().next().slideToggle(500);
		})
	})
	



/* 선택한 재료가  totalselect에 나오도록 설정 */
	/* $("input[name=base]").click(e=>{
		if($(e.target).prop("checked")==true){
		let ck=$(e.target).val();
		$(".print1").append(ck);
		}
	}); */
	/* 선택한 재료가 totalselect에 나오도록 설정 해결 */
	$("input[name=base]").change(function(e){
		if($(e.target).is(":checked")){
			let ck=$(e.target).val();
			let p=$("<p>").html(ck);
		$(".print1").append(p);
		}
			if($(e.target).prop("checked")==false){
				let flag=true;
				$("input[name=base]").each(function(i,v){
					if($(v).prop("checked")==true){
						flag=false;
					}
				});
				if(flag){
			$(".print1").children().filter("p").remove();
				}
			}
	})
	
	function updateTopping(){
      let ck="";
      let p=$("<p>"); 
      let tp=$(".print2").html("<h5>토핑(최대 3개)</h5>");
      
      $("input[name=topping]:checked").each(function(i){
         if(i!=0){
        	 p.append(",");
         }
    	  ck=$(this).val();
         p.append(ck);
         
      });
      
      $(".print2").append(p);
   }
   
   $("input[name=topping]").change(function(){
      updateTopping();
   })
   
   function updateDressing(){
	   let ck="";
	      let p=$("<p>"); 
	      let tp=$(".print3").html("<h5>드레싱</h5>");
	      
	      $("input[name=dressing]:checked").each(function(i){
	         if(i!=0){
	        	 p.append(",");
	         }
	    	  ck=$(this).val();
	         p.append(ck);
	         
	      });
	      
	      $(".print3").append(p);
   }
   
   $("input[name=dressing]").change(function(){
	      updateDressing();
	   })
	
	  /*  function checkAll(){
	   let sum="";
		$("input[type=checkbox]").each(function(i,v){
		if($(v).prop("checked")){
			sum+=$(v).val();
		}
		})
		console.log(sum);
		let sum4=sum.split("/");
		let num=0;
		console.log(sum4);
		for(let i=1;i<sum4.length;i++){
			num+=parseInt(sum4[i]);
		}
		
		$(".print4").html("");
		
		let p=$("<p>");
		p.append(num);
		$(".print4").append(p);
		} */
		
		/* 체크박수 갯수 제한 */
		 function checkAll(e){
			   let sum="";
				$("input[type=checkbox]").each(function(i,v){
				if($(v).prop("checked")){
					sum+=$(v).val();
				}
				})
				console.log(sum);
				let sum4=sum.split("/");
				let num=0;
				console.log(sum4);
				for(let i=1;i<sum4.length;i++){
					num+=parseInt(sum4[i]);
				}
				
				
				var chk1=document.getElementsByName("base");
			    var chkCnt1=0;
			   
			    for(var i=0;i<chk1.length;i++){
					if(chk1[i].checked){
						chkCnt1++;
					}
				}
				
				if(chkCnt1>1){
					alert("최대 1개까지만 선택 가능합니다.");
					$(e.target).prop("checked",false);
					return;
				}
				
				//토핑 갯수제한
				var chk2=document.getElementsByName("topping");
				var chkCnt2=0;
				
				for(var i=0;i<chk2.length;i++){
					if(chk2[i].checked){
						chkCnt2++;
					}
				}
				
				if(chkCnt2>3){
					alert("최대 3개까지만 선택 가능합니다.");
					$(e.target).prop("checked",false);
					return;
				}
				
				//드레싱 갯수제한
			    var chk3=document.getElementsByName("dressing")
			    var chkCnt3=0;
			   
			    for(var i=0;i<chk3.length;i++){
					if(chk3[i].checked){
						chkCnt3++;
					}
				}
				
				if(chkCnt3>1){
					alert("최대 1개까지만 선택 가능합니다.");
					$(e.target).prop("checked",false);	
					return;
				}
				
				
				$(".print4").html("");
				let p=$("<p>");
				p.append(num);
				$(".print4").append(p);
				}
		

   $("input[type=checkbox]").click(e=>{
	      checkAll(e);
	   })
   
	
	



/* 장바구니, 주문하기 클릭 시 이동 설정 */
	function test1(){
	   <%if(loginMember!=null){%>
		test.action="<%=request.getContextPath()%>/view/custom/test2.jsp";
		<%}else{%>
		test.action="<%=request.getContextPath()%>/view/loginAlert.jsp";
		<%}%>
		test.submit();
	}
	function test2(){
		 <%if(loginMember!=null){%>
			test.action="<%=request.getContextPath()%>";
			<%}else{%>
			test.action="<%=request.getContextPath()%>/view/loginAlert.jsp";
			<%}%>
		
		
		
		test.submit();
	}

   /*  $(function(){
        $("input[type='checkbox']").attr("onclick","count(this,event);");
    }) */


</script>




<style>
section.contents-wrap {
            position: relative;
            top: 120px;
            margin-left: auto;
            margin-right: auto;
            width: calc(100%-30px);
            max-width: 100%;
            box-sizing: border-box;
            min-height: 1px;
        }
.down {
	width: 20px;
	height: 15px;
}
</style>
</section>

<%@include file="/view/common/footer2.jsp"%>