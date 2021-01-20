<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      <!DOCTYPE html>
      <html lang="en">
      <c:import url="/layout/head" />
      <style>
        .more-link{
          padding-right:15px;
        }
        .search-bar {
          clear: both;
          padding: 10px;
        }

        .input-group {
          margin: 10px;
          display: inline;
        }

        .sub-title {
          position: relative;
          text-align: center;
          font-size: 14px;
          color: #999;
          overflow: hidden;
          padding: 1.2em 0;
          /**把高度撐起來**/
        }

        .ticket-content {
          display: flex;
        }

        .inner {
          position: absolute;
          left: 50%;
          transform: translateX(-50%);
          white-space: nowrap;
          line-height: 1px;
          border-left: 9999px solid #ccc;
          border-right: 9999px solid #ccc;
          padding: 0 10px;
        }
      </style>

      <body>
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

        <div class="search-bar">
          <div class="input-group">
            <input type="search" class="form-control rounded" placeholder="票券搜尋" aria-label="Search"
              aria-describedby="search-addon" style="width:200px" />
            <button type="button" class="btn btn-outline-primary">Search</button>
          </div>
        </div>

        <!-- 購買票券主頁面START -->
        <div class="ticket-content">
          <div class="side-bar well" style="height:600px;width:170px">
            <div class="well">
              <p>票券種類</p>
              <p><a href="#">展覽</a></p>
              <p><a href="#">樂園與景點</a></p>
              <p><a href="#">運動賽事</a></p>
            </div>
            <div class="well">
              <p>經銷便利店</p>
              <p><a href="#">全家</a></p>
              <p><a href="#">7-11</a></p>
              <p><a href="#">萊爾富</a></p>
            </div>
          </div>
  
  
          <div class="container text-center">
            <!-- 第一行 -->
            <div class="sub-title">
              <span class="inner">我是第一行分割線</span>
            </div>
            <div class="row" style="height:330px">
              <div class="col-sm-4">
                <div class="panel panel-primary">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="panel panel-danger">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="panel panel-success">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="more-link">
                <a href="#" class="btn btn-info" role="button" style="float:right"><svg xmlns="http://www.w3.org/2000/svg"
                    width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                      d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z" />
                    <path fill-rule="evenodd"
                      d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z" />
                  </svg>&nbsp;&nbsp;See More
                </a>
              </div>
  
            </div>
            <br>
  
            <!-- 第二行 -->
            <div class="sub-title">
              <span class="inner">我是第二行分割線</span>
            </div>
            <div class="row" style="height:330px">
              <div class="col-sm-4">
                <div class="panel panel-primary">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="panel panel-danger">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="panel panel-success">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="more-link">
                <a href="#" class="btn btn-info" role="button" style="float:right"><svg xmlns="http://www.w3.org/2000/svg"
                    width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                      d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z" />
                    <path fill-rule="evenodd"
                      d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z" />
                  </svg>&nbsp;&nbsp;See More
                </a>
              </div>
            </div>
            <br>
  
            <!-- 第三行 -->
            <div class="sub-title">
              <span class="inner">我是第三行分割線</span>
            </div>
            <div class="row" style="height:330px">
              <div class="col-sm-4">
                <div class="panel panel-primary">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="panel panel-danger">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="panel panel-success">
                  <div class="panel-heading">BLACK FRIDAY DEAL</div>
                  <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive"
                      style="width:100%" alt="Image"></div>
                  <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                </div>
              </div>
              <div class="more-link">
                <a href="#" class="btn btn-info" role="button" style="float:right"><svg xmlns="http://www.w3.org/2000/svg"
                    width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                      d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z" />
                    <path fill-rule="evenodd"
                      d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z" />
                  </svg>&nbsp;&nbsp;See More
                </a>
              </div>
            </div>
            <br>
          </div>
        </div>
        







        <!-- 購買票券主頁面 END -->

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
      </body>
      <script>

      </script>

      </html>