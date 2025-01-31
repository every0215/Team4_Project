<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>商品套用頁</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
    
    
    <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js"></script>
    
    <style>
        /* *{
            border:solid black 1px;
        } */    

        body{
            background-color: #f3f3f3;
        }
        
        .pageTitle{
            margin:auto;
            padding: 5px;   
        }

        .panel{
            width: 100%;
            height: 400px;
            overflow: scroll;
            border:solid 1px black;
        }

        .panel table{
            width:100%;
        }

        .panel table th{
            text-align: center;       
        }

        .panel table,.panel td, .panel th{
            border: 1px solid #000;
            border-left: none;
        }

        .panel tbody>tr{
            cursor: pointer;
            border-left:none;
        }

        .functionBar{
            text-align: center;
            margin:auto;
        }

        .container h4{
            text-align: center;
            padding:10px;
            background-color: #555e68;
            color: #f3f0e9;
        }

        .container{
            background-color: rgba(11,129,255,0.07);
            margin-top:10px;
            border:solid 1px black;
            border-radius: 10px;
            box-shadow: 0 0 10px black;
            position:relative;
        }

        .functionRow{
            margin-top: 20px;
            border-top: 1px solid #000;
            padding:10px ;
        }

        .functionRow button{
            margin: 0px 10px;
        }

        .button {
            margin-top:5px
        }

        .sub-title{
            border:1px solid;
            margin-top:10px;
            border-radius:5px
        }

        .show{
            height: 650px;
        }
        
        #searchBar{
        	position:absolute;
        	right:10px;
        	top:10px;
        }
		
		
    </style>
<link rel="stylesheet" href="<c:url value='/css/loading_circle.css'/>">

</head>
<body>
<div class="loading-bg" style="display:none">
        <div id = "circle-wraper">
            <div id="loading-circle">
                <div>Loading</div>
			</div>
		</div>
</div>
    <div class="container" id="container">
    	<div id="searchBar"><input id="search" style=""type="text" placeholder="搜尋"/></div>
        <div class="row"><h2 class="pageTitle">選擇套用的商品<span style="color:red;font-size:16px">目前折扣參數:${discountParam}</span></h2></div>
        <div class="row">
          <div class="col">
            <h4 class="sub-title">目前套用商品</h4>
            <div class="productInCampPanel panel">
                
                <table>
                    <thead>
                        <tr>
                            <th>商品編號</th>
                            <th>商品名稱</th>
                            <th>商品價格</th>
                        </tr>

                    </thead>
                    <tbody>
						<c:forEach items="${productsInCamp}" var="product"> 
							<tr>
								<td class="productId">${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.productPrice}</td>
							</tr>
					    </c:forEach>
					</tbody>
                </table>
            </div>
            <div id="rightBar" class="functionBar">
                <button id="unapplyBtn" class="button btn btn-outline-dark" type="button">取消套用</button>
            </div>
          </div>        
          <div class="col">
            <h4 class="sub-title">未套用商品</h4>
            <div class="productNotInCampPanel panel">
                <table style="">
                    <thead>
                        <tr data-id="">
                            <th>商品編號</th>
                            <th>商品名稱</th>
                            <th>商品價格</th>
                        </tr>

                    </thead>
                    <tbody>
                        <c:forEach items="${productsNotInCamp}" var="product"> 
							<tr data-name="${product.productName}">
								<td class="productId">${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.productPrice}</td>
							</tr>
					    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div id="leftBar" class="functionBar">
                <button id="applyBtn" class="button btn btn-outline-dark" type="button">套用</button>
            </div>
          </div>        
        </div>
        <div class="row functionRow">
            <div class="functionBar">
                <button id="comfirm" class=" btn btn-outline-dark" type="button">確定</button>
                <button id="cancel-btn"class=" btn btn-outline-dark" type="button">取消</button>
                <button onclick="window.close()"class=" btn btn-outline-dark" type="button">離開</button>
            </div>          
        </div>	
    </div>

    <script>
            
        $(function(){
			
        	var applyBean = {};
        	var productIncamp =[];
        	var productNotIncamp =[];
			var products = [];
			
			products =	$(".productNotInCampPanel tbody>tr");		
				
			
			
			
			console.log(products);
        	$("#search").keyup(function(){
        		$(".productNotInCampPanel tbody").html("");
        		var searchStr = $(this).val(); 		
        		$(products).each(function(){
        			var name = $(this).data("name")
        			if (name.indexOf(searchStr)!=-1){      				
        				$(".productNotInCampPanel tbody").append($(this).clone(true));
        			}
        		})
        		
        	})
        	
        	$("#cancel-btn").on("click",function(){
        		location.reload();
        	})
        	
			$("#comfirm").click(function(){
				
				$(".loading-bg").css("display","block")
				readTheProductId();
			
				$.ajax({
					url:"<c:url value='/campaign/applyCampaign/'/>"+${campaignId},
					type:"POST",
					dataType : 'text',
					contentType : 'application/json;charset=UTF-8',
					data:JSON.stringify(applyBean),
					success:function(result){
						$(".loading-bg").css("display","none")
						if(result=="success"){
							swal({
								title:"已成功變更",
								type: 'success',
								confirmButtonText:"確認",
							})
						}else{
							swal({
								title:"變更失敗",
								type: 'error',
								confirmButtonText:"確認",
							})
						}
					}
					,error:function(){
						swal({
							title:"變更失敗",
							type: 'error',
							confirmButtonText:"確認",
						})
					}
				})
			});
            //動態綁定每列資料的click事件，點擊變黑，其他列還原
            $(".panel").on("click","tbody>tr",function(){

                if($(this).css("background-color")=="rgb(0, 128, 140)"){
                    $(this).css("background-color","")
                    $(this).css("color","rgb(0, 0, 0)")
                    $(this).css("border","")
                    
                }else{
                    $(this).css("background-color","#00808c")
                    $(this).css("color","rgb(255, 255, 255)")
                    $(this).css("border-color","rgb(0, 0, 0)")
                    $(this).css("border","rgb(255, 255, 255) solid 2px")
                }
                  
                // $(this).siblings().css("background-color","")
                // $(this).siblings().css("color","rgb(0, 0, 0)") 
            })



            $("#applyBtn").click(function(){
                //檢查元素是否被選取
               $(".productNotInCampPanel tr").each(function(){           
                   if($(this).css("background-color")=="rgb(0, 128, 140)"){
                        //如果被選取，則clone到對面框框，並對其色彩予以還原
                        $(this).css({"background-color":"","color":"","border":""});
                        $(".productInCampPanel tbody").append($(this).clone())
                        $(this).remove();
                   }
               })

            })

            $("#unapplyBtn").click(function () {
                    //檢查元素是否被選取
                    $(".productInCampPanel tr").each(function () {
                        if ($(this).css("background-color") == "rgb(0, 128, 140)") {
                            $(this).css({"background-color":"","color":"","border-color":"inherit"});
                            $(".productNotInCampPanel tbody").append($(this).clone())
                            $(this).remove();
                        }
                    })

                })
                
//      =========================function==================================
			
			function readTheProductId(){
            	$(".productInCampPanel .productId").each(function(){
					productIncamp.push($(this).html());
				});
				
				$(".productNotInCampPanel .productId").each(function(){
					productNotIncamp.push($(this).html());
				});
				
				applyBean.productsIdInCamp = productIncamp;
				applyBean.productsIdNotInCamp = productNotIncamp;
            }
            
            
        })
        	
        
                
    </script>
</body>
</html>