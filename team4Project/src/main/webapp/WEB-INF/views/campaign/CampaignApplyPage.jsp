<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品套用頁</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <style>
        /* *{
            border:solid black 1px;
        } */    

        body{
            background-color: #e9ecef;
        }
        
        .pageTitle{
            margin:auto;
            border-bottom: #000 solid 1px; 
            padding: 5px;   
        }

        .panel{
            width: 100%;
            height: 400px;
            overflow: scroll;
            border-left:solid 1px black;
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
            background-color: #adb1b6;
            margin-top:10px;
            /* border:solid 1px black; */
            border-radius: 10px;
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

    </style>

</head>
<body>
    <div class="container" id="container">
        <div class="row"><h2 class="pageTitle">選擇套用的商品</h2></div>
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
                        <tr>
                            <td>商品編號</td>
                            <td>商品名稱</td>
                            <td>商品價格</td>
                        </tr>
                        <tr>
                            <td>商品編號</td>
                            <td>商品名稱</td>
                            <td>商品價格</td>
                        </tr>
                        <tr>
                            <td>商品編號</td>
                            <td>商品名稱</td>
                            <td>商品價格</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="rightBar" class="functionBar">
                <button id="unapplyBtn" class="button btn btn-outline-dark" type="button">取消套用</button>
            </div>
          </div>        
          <div class="col">
            <h4 class="sub-title">目前未套用商品</h4>
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
                        <tr>
                            <td>商品編號</td>
                            <td>商品名稱</td>
                            <td>商品價格</td>
                        </tr>
                        <tr>
                            <td>商品編號</td>
                            <td>商品名稱</td>
                            <td>商品價格</td>
                        </tr>
                        <tr>
                            <td>商品編號</td>
                            <td>商品名稱</td>
                            <td>商品價格</td>
                        </tr>
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
                <button class=" btn btn-outline-dark" type="button">確定</button>
                <button class=" btn btn-outline-dark" type="button">取消</button>
            </div>          
        </div>
    </div>

    <script>
            
        $(function(){


            //動態綁定每列資料的click事件，點擊變黑，其他列還原
            $(".panel").on("click","tbody>tr",function(){

                if($(this).css("background-color")=="rgb(0, 0, 0)"){
                    $(this).css("background-color","")
                    $(this).css("color","rgb(0, 0, 0)")
                }else{
                    $(this).css("background-color","rgb(0, 0, 0)")
                    $(this).css("color","white")
                }
                  
                // $(this).siblings().css("background-color","")
                // $(this).siblings().css("color","rgb(0, 0, 0)") 
            })



            $("#applyBtn").click(function(){
                //檢查元素是否被選取
               $(".productNotInCampPanel tr").each(function(){           
                   if($(this).css("background-color")=="rgb(0, 0, 0)"){
                        //如果被選取，則clone到對面框框，並對其色彩予以還原
                        $(this).css({"background-color":"","color":""});
                        $(".productInCampPanel tbody").append($(this).clone())
                        $(this).remove();
                   }
               })
            })

            $("#unapplyBtn").click(function () {
                    //檢查元素是否被選取
                    $(".productInCampPanel tr").each(function () {
                        if ($(this).css("background-color") == "rgb(0, 0, 0)") {
                            $(this).css({"background-color":"","color":""});
                            $(".productNotInCampPanel tbody").append($(this).clone())
                            $(this).remove();
                        }
                    })
                })

        })
            
    </script>
</body>
</html>