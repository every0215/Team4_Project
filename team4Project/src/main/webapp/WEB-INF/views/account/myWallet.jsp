<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
  <c:import url="/layout/head" />
  
<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<script src="<c:url value='/js/DateFormat.js' />"></script>
<style>


/* General */

/* Intro */

.intro{
  width:100%;
  height:30px;
}
.intro h1{
  font-family:'Oswald', sans-serif;
  letter-spacing:2px;
  font-weight:normal;
  font-size:14px;
  color:#fff;
  text-align:center;
  margin-top:10px;
}
.intro a{
  color:#fff;
  font-weight:bold;
  letter-spacing:0;
}
.intro img{
  width:20px;
  heght:20px;
  margin-left:5px;
  margin-right:5px;
  position:relative;
  top:5px;
}

/* Body */
body{
  font-family: arial, verdana;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  background:#e74c3c;
}
#container{
  width:80%;
  min-width:1100px;
  min-height:500px;
  margin:3% auto 0 auto;
}
.pricetab{
  width:20%;
  min-width:220px;
  background: linear-gradient(#555, #444);
  float:left;
  margin-top:.2%;
  box-shadow:1px 1px 5px rgba(0, 0, 0, .5);
}
.pricetabmid{
  width:97%;
  min-width:220px;
  background: linear-gradient( #39c7f1, #1426ff);
  float:left;
  box-shadow:0 0  15px rgba(0, 0, 0, 1);
  position:relative;
  color: #fff;
}
.priceheader{
  width:100%;
  height:60px;
  background-image: -o-linear-gradient(bottom ,#444 , #555); 
  background-image: -webkit-linear-gradient(bottom ,#444 , #555);
  background-image: -o-linear-gradient(bottom ,#444 , #555); 
  background-image: -moz-linear-gradient(bottom ,#444 , #555); 
  background-image: linear-gradient(to bottom , #444 , #555); 
  box-shadow:0 2px 12px rgba(0, 0, 0, .5);
}
.price{
  width:120px;
  height:120px;
  border-radius:50%;
  border:1px solid #ff9547;
  margin:5% auto 0 auto;
  text-align:center;
}
.pricemid{
  width:120px;
  height:120px;
  border-radius:50%;
  border:1px solid #444;
  margin:5% auto 0 auto;
  text-align:center;
}
.infos{
  margin-top:10%;
}
.pricefooter{
  width:100%;
  height:50px;
  margin-top:10%;
  background:#fe9040; 
}
.pricefootermid{
  width:100%;
  height:50px;
  margin-top:10%;
  background:#409efe; 
}
.author{
  width:10%;
  min-width:150px;
  height:40px;
  background:rgba(0, 0, 0, .5);
  overflow:hidden;
  clear:both;
  float:right;
  position:fixed;
  bottom:0;
  right:0;
  -moz-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  -ms-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}
.author:hover{
  background:rgba(0, 0, 0, .8);
}
.author:hover .credit{
  margin-left:10%;
}
/* Typo */ 
.title{
  font-family:arial;
  color:#fff;
  font-size:38px;
  font-weight:normal;
  text-align:center;
  text-transform:uppercase;
  text-shadow: 1px 2px 5px rgba(0,0,5,0.2);
  margin:auto;
}
h1{
  font-size:18px;
  color:#fff;
  text-align:center;
  line-height:3;
}
h2{
  text-align:center;
  font-size:42px;
  color:#fff;
}
sub{
  text-transform: uppercase;
  font-size: 14px;
  font-weight: bold;
}
h3{
  font-size:14px;
  font-weight:normal;
  text-align:center;
  color:#fff;
  line-height:1;
}
.button a{
  color:#fff;
  font-size:14px;
  font-weight:bold;
  text-decoration:none;
  line-height:3;
}
.buttonmid a{
  color:#fff;
  font-size:14px;
  font-weight:bold;
  text-decoration:none;
  line-height:3.5;
}
.credit{
  font-family:arial;
  color:#fff;
  font-size:16px;
  font-weight:normal;
  text-align:left;
  text-shadow: 1px 2px 5px rgba(0,0,5,0.2);
  margin-left:5%;
  line-height:1.3;
  -moz-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  -ms-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}
/* Buttons */ 
.button{
  width:50%;
  height:50px;
  margin:0 auto 0 auto;
  background:#ff9547;
  text-align:center; 
  cursor:pointer;
  -moz-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  -ms-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}
.button:hover{
  width:60%;
}
.buttonmid{
  width:50%;
  height:50px;
  margin:0 auto 0 auto;
  background:#33333330;
  text-align:center; 
  cursor:pointer;
  -moz-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  -ms-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}
.buttonmid:hover{
  width:60%;
}

/* .h1, .h2, .h3, h1, h2, h3{ */
/* 	cursor:pointer; */
/* 	margin-top: 40px; */
/* 	margin-bottom: 10px; */
/* } */

</style>

<body> 
  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeConsoleRunner-7f4d47902dc785f30dedcac9c996b9f31d4dfcc33567cc48f0431bc918c2bf05.js"></script>
  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-bb9a2ba1f03f6147732cb3cd52ac86c6b24524aa87a05ed0b726f11e46d7e277.js"></script>
  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRuntimeErrors-4f205f2c14e769b448bcf477de2938c681660d5038bc464e3700256713ebe261.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
  
  
  
   <!-- wpf loader Two -->
    <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div> 
    <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

	<c:import url="/layout/header" />

  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="<c:url value='/img/fashion/fashion-header-bg-8.jpg' />" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Account Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>                   
          <li class="active">Account</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
                <div class="nav-side-menu col-md-2">
			    	<c:import url="/layout/accountMenu" />
				</div>
				<div class="container col-md-10">
				  <h4>我的錢包</h4>
								<div class="col-xs-12">
									<div class="col-xs-7" style="border-right: solid 2px #d8d8d8;">
										<div class="row">
										    <div class="pricetabmid">
										      <h1> M幣餘額 </h1>
										      <div class="pricemid"> 
										        <h2 style="margin-top: 40px; margin-bottom: 10px;"> ${sessionScope.currentUser.mCoin.balance} </h2> 
										      </div>
										      <div class="infos">
										        <h3></h3>
										      </div>
										      <div class="pricefootermid">
										        <div class="buttonmid">
										          <a href="#"> 儲值明細 </a>
										        </div>
										      </div>
										    </div>
									    </div>
									    <hr>
									    <div class="row">
											<form:form id="Form" method="POST" class="aa-login-form" style="width:97%;" action="${pageContext.request.contextPath}/member/myWalletTopUp"
												modelAttribute="MCoinTopUpDetail" enctype='multipart/form-data'>
												<div class="form-group">
													<h2>M幣儲值</h2>
													<label for="topUpAmount">儲值金額<span>*</span></label> 
													<input type="number" class="form-control" id="topUpAmount" name="topUpAmount" value="" placeholder="請輸入儲值點數" tooltip="請輸入M幣儲值點數" required >
												</div>
												<div class="form-group">
													<span style="color:#ff0000;">*</span><span style="font-size:11px;">台幣與M幣1:1,&nbsp;如儲值500元可獲得M幣500點。(M幣可用來購買商品與票劵等)</span>
												</div>
												<div class="form-group">
													<label for="paymentAmount">支付金額(台幣TWD)<span>*</span></label> 
													<input type="number" class="form-control" id="paymentAmount" name="paymentAmount" value="" placeholder="" required disabled>
												</div>
												
												<div class="form-group">
													<div class="row">
													  <div class="col-md-12">
													  	<label for="validationCustom03">Category:</label>
													      <select class="form-control form-control-lg" id="creditCardList" name="creditCardId" required>
													        <option value="">請選擇信用卡</option>
													      </select>
													  </div>
													</div>
												</div>
												
												<hr style="border-bottom: 1px solid #ccc; height: 3px;" />
												<div class="form-group">
													<button type="submit" id="FormSubmit" class="aa-browse-btn">儲值M幣</button>
													<br />
													<br />
												</div>
												<div class="form-group">
													<div id="MsgDiv" class="alert alert-info">
														<strong id="MsgLabel">XXX:</strong><br> <span id="Msg">xxx</span>
													</div>
												</div>
											</form:form>
										</div>
									</div>
									<div class="col-xs-5">
										<div id="MCoinTopUpDetailListDiv" style="margin-left:20px; ">

										</div>

									</div>
								</div>
							</div>
				
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 
 

 <!-- / Cart view section -->

  <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Our Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Knowledge Base</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Delivery</a></li>
                      <li><a href="#">Returns</a></li>
                      <li><a href="#">Services</a></li>
                      <li><a href="#">Discount</a></li>
                      <li><a href="#">Special Offer</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Useful Links</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Site Map</a></li>
                      <li><a href="#">Search</a></li>
                      <li><a href="#">Advanced Search</a></li>
                      <li><a href="#">Suppliers</a></li>
                      <li><a href="#">FAQ</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p> 25 Astor Pl, NY 10003, USA</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>dailyshop@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by <a href="http://www.markups.io/">MarkUps.io</a></p>
            <div class="aa-footer-payment">
              <span class="fa fa-cc-mastercard"></span>
              <span class="fa fa-cc-visa"></span>
              <span class="fa fa-paypal"></span>
              <span class="fa fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->

 

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<c:url value='/js/bootstrap.js' />"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="<c:url value='/js/jquery.smartmenus.js' />"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="<c:url value='/js/jquery.smartmenus.bootstrap.js' />"></script>  
  <!-- To Slider JS -->
  <script src="<c:url value='/js/sequence.js' />"></script>
  <script src="<c:url value='/js/sequence-theme.modern-slide-in.js' />"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="<c:url value='/js/jquery.simpleGallery.js' />"></script>
  <script type="text/javascript" src="<c:url value='/js/jquery.simpleLens.js' />"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="<c:url value='/js/slick.js' />"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="<c:url value='/js/nouislider.js' />"></script>
  <!-- Custom js -->
  <script src="<c:url value='/js/custom.js' />"></script> 
  
  <script src="<c:url value='/js/luke_js.js' />"></script> 
  
  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
  <script  src="https://cdpn.io/cp/internal/boomboom/pen.js?key=pen.js-70199a3b-d922-2eff-4b6c-1b5626afc909" crossorigin></script>
  
  
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js'></script>
  
  <script >
      $(document).ready(function() {
    		
    		let msgDiv = $("#MsgDiv");
    		let msgLabel = $("#MsgLabel");
    		let msg = $("#Msg");
    	  	msgDiv.hide();
    	  
    	  	getMemberCreditCards();
    	  	getMCoinTopUpDetailList();
    	
    		//密碼變更成功
    	  	<c:if test='${(verified != null)&&(verified== true)}'>
    	  		showMsg('成功訊息:','<c:out value="${msg}" />','alert-info');
  			</c:if>
	  		//密碼變更錯誤
	  		<c:if test='${(verified != null)&&(verified== false)}'>
	  			showMsg('錯誤訊息:','<c:out value="${msg}" />','alert-danger');
	  	  	</c:if>
  	  	
	  	  	
    	    //=============================================================================
    	    //================================  FUNCTIONS  ================================
    	    //=============================================================================
    	    
				
			$("#topUpAmount").change(function(){
				$("#paymentAmount").val($(this).val());
			});
			

    	    $("#FormSubmit").click(function(e){
    		    e.preventDefault();
    		    let checkCreditCardFlag = false;
    		    
    		    console.log("#creditCardList value: " + $("#creditCardList").val() );
    		    
    		    if($("#creditCardList").val()!=""){
    		    	checkCreditCardFlag = true;
    		    }
    		    
    		    let errorMSG = "<ul class='ll-err-list-msg' >";
    		    
    		    if(!checkCreditCardFlag )
    		    {
    		    	errorMSG += "<li>請選擇信用卡</li>";
    		    }
    		    else{
    		    	msgDiv.hide();
    		    }
    		    
    		    if (checkCreditCardFlag ) {
    		        $("#Form").submit();
    		    }
    		    else {
    		    	showMsg('錯誤訊息', errorMSG, 'alert-danger')
    		    }
    		       
    		});
    	  
    	    function getMemberCreditCards(){
    	    	  let mcclist = $("#creditCardList");
    	    	  $.ajax({
    					type: "Get",
    					url: "<c:url value='/member/getMemberCreditCards' />",
    					//data: { memberId: id },
    					success:function(data){
    						console.log("success: "+data);
    						//可增加動態處理
    						// ....
    						let htmlstr = '';
    	 					for(let i = 0; i<data.length;i++){
    	 			        	console.log("cardNo: " + data[i].cardNo);
    	 			        	htmlstr += '<option value="'+data[i].id+'">'+data[i].cardNo+'</option>';
    	 			        }
    	 					mcclist.append(htmlstr);
    					},
    					error: function(xhr, status, error){
    				    	var errorMessage = "[Error-"+  xhr.status+"]\r\n" + xhr.statusText + ': ' + xhr.responseText
    				    	console.log(errorMessage);
    				    	msgDiv.html("取得信用卡清單失敗(status:" +  xhr.status + ")");
    				    	msgDiv.removeClass().addClass("alert alert-danger").show();
    				    	
    				    }
    					
    					
    				});
    	      }
    	    
    	    function getMCoinTopUpDetailList(){
    	    	  let mcclistDiv = $("#MCoinTopUpDetailListDiv");
    	    	  $.ajax({
    					type: "Get",
    					url: "<c:url value='/member/getMCoinTopUpDetailList' />",
    					//data: { memberId: id },
    					success:function(data){
    						console.log("success: "+data);
    						//可增加動態處理
    						// ....
    						let htmlstr = '';
    	 					for(let i = 0; i<data.length;i++){
    	 			        	console.log("MCoin TopUp Detail: " + data[i].paymentAmount + '('+data[i].createdDate+')');
    	 			        	htmlstr += '<div class="row" style="margin-top: 5px; background-color: #005dd0; border: solid 1px #207df0; padding: 15px; color: #fff; ">';
    	 			        	htmlstr += '<div class="col-xs-12"><div id="input--cc" class="creditcard-icon">'+( new Date(data[i].createdDate)).format('yyyy/MM/dd hh:mm:ss')+' 購買M幣: <i class="fa fa-money"></i><span style="margin: 3px; font-size: 16px;"><b>' + data[i].paymentAmount + '</b></span></div></div></div>';
									
    	 			        }
    						mcclistDiv.append(htmlstr);
    						

    					},
    					error: function(xhr, status, error){
    				    	var errorMessage = "[Error-"+  xhr.status+"]\r\n" + xhr.statusText + ': ' + xhr.responseText
    				    	console.log(errorMessage);
    				    	msgDiv.html("取得信用卡清單失敗(status:" +  xhr.status + ")");
    				    	msgDiv.removeClass().addClass("alert alert-danger").show();
    				    	
    				    }
    					
    					
    				});
    	    	  
    	    	 
    	      }
      });
      
    	</script>
  </body>

      
</html>