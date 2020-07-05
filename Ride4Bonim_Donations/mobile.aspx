<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="Ride4Bonim_Donations.mobile" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ride 4 Bonim</title>
    <link rel="apple-touch-icon" sizes="180x180" href="Images/apple-touch-icon.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="Images/favicon-32x32.png"/>
    <link rel="icon" type="image/png" sizes="16x16" href="Images/favicon-16x16.png"/>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/popper.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/Parent.css" />
    <link rel="stylesheet" href="StylesMobile.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"/>
    <link rel="stylesheet" href="Content/CircularProg.css"/>
    <script src="Scripts/CircularProg.js"></script>
    <script src="Scripts/Updates.js"></script>
</head>
<body class="container-fluid">
  <div class="row menubar align-self-center">
      <div class="maintitle align-self-center text-center">
          THIS YEARS RIDE IS ON
          <b class="bold-title">SUN 5TH JULY 2020 - 100 KM</b> FROM
          <b class="bold-title">WALES TO MANCHESTER</b>
      </div>
      <div style="margin: auto;">
          <button type="button" onclick="location.href='https://ride4bonim.org.uk/donate'" class="btn btn-default btn-menu"><i class="fas fa-hand-holding-heart mr-2"></i>DONATE</button>
          <button type="button" onclick="location.href='https://ride4bonim.org.uk/login'" class="btn btn-default btn-menu">LOGIN</button>
          <button type="button" onclick="location.href='https://ride4bonim.org.uk/join'" class="btn btn-default btn-menu">JOIN</button>
      </div>
  </div>

  <nav class="navbar navbar-expand-lg navbar navbar-default bg-dark">
    <a class="navbar-brand" href="#"><img class="nav_logo" src="Images/logo.png"/></a>
    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a href="https://ride4bonim.org.uk/riders" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">RIDERS</a>
        </li>
        <li class="nav-item">
          <a href="https://ride4bonim.org.uk/volunteers" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">VOLUNTEERS</a>
        </li>
        <li class="nav-item">
          <a href="https://ride4bonim.org.uk/about" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">AIM HABONIM</a>
        </li>
        <li class="nav-item">
          <a href="https://ride4bonim.org.uk/ride" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">THE RIDE</a>
        </li>
        <li class="nav-item">
          <a href="https://ride4bonim.org.uk/media" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">MEDIA</a>
        </li>
        <li class="nav-item">
          <a href="https://ride4bonim.org.uk/achievements" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">ACHIEVEMENTS</a>
        </li>
        <li class="nav-item">
          <a href="https://ride4bonim.org.uk/fame" class="deco-none h6 col-lg-1 col-md-12 col-sm-12">WALL OF FAME</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="row justify-content-center text-center" style="margin-top:0px;">
      <div class="card w-50 col-12">
        <div class="card-body">
            <h5 class="card-title totalAmount">Total Amount Raised</h5>
            <div id="amountRaised" class="totalDisplay">£0.0</div>
            <hr style="margin:0px -35px 10px -35px"/>
            <div class="targetlabel">OUR TARGET <span id="targetValue" class="targetval">£0.0</span></div>
            <div class="targetpercentcontainer" style="overflow:auto">

                <span id="targPercent" class="targetpercent">0%</span>
                <div id="targProg" class="progress2 circliful progg" data-startdegree="0" data-dimension="145" data-fontsize="36"  data-fgcolor="#f33f46" data-bgcolor="#eee" data-width="5" data-bordersize="5" data-animationstep="2"></div>

                <div class="whitelabel">OF TARGET RAISED</div>

            </div>
        </div>
      </div>
  </div>


  <div class="row justify-content-center carrouselcontainer">
      <div id="carousel-example" class="carousel justify-content-center slide" data-ride="carousel">
          <div class="carousel-inner col-12 justify-content-center mx-auto" role="listbox">
              <div class="carousel-item active">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card w-50 col-12 donationcard">
                    <div class="card-body">
                        <h5 class="detail_1 card-title donationcardtitle"></h5>
                        <div class="detail_2 donationcardcontent"></div>
                        <div class="detail_3 donationcardcontent"></div>
                        <div class="detail_4 donationcardcontent"></div>
                    </div>
                  </div>
                  </div>
              </div>
          </div>
          <a class="carousel-control-prev owl-prev" href="#carousel-example" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-example" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
          </a>
      </div>
  </div>

  <div class="col-lg-6 col-sm-12 col-md-10" style="padding:10px 0;display:block;height:500px">
      <iframe allow="microphone; camera" style="border: 0; height: 500px; left: 0; position: absolute; top: 0; width: 100%;" src="https://success.zoom.us/wc/join/85724061259" frameborder="0"></iframe>
  </div>

  <!--Start of Tawk.to Script-->
  <script type="text/javascript">
      var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
      (function () {
          var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
          s1.async = true;
          s1.src = 'https://embed.tawk.to/5f002eec223d045fcb7b4a75/1eccc19gd';
          s1.charset = 'UTF-8';
          s1.setAttribute('crossorigin', '*');
          s0.parentNode.insertBefore(s1, s0);
      })();
  </script>
    <!--End of Tawk.to Script-->

</body>
</html>