<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Ride4Bonim_Donations.index" %>

<!DOCTYPE html>

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
    <link rel="stylesheet" href="Styles.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"/>
    <link rel="stylesheet" href="Content/CircularProg.css"/>
    <script src="Scripts/CircularProg.js"></script>
    <script src="Scripts/Updates.js"></script>

    <script>
        function mobileAndTabletCheck() {
            let check = false;
            (function (a) { if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino|android|ipad|playbook|silk/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))) check = true; })(navigator.userAgent || navigator.vendor || window.opera);
            return check;
        };
        if (mobileAndTabletCheck())
            window.location.href = "mobile.aspx";
    </script>



    <script type="text/javascript">
        $(window).load(function () {
            $(".carousel .item").each(function () {
                var i = $(this).next();
                i.length || (i = $(this).siblings(":first")),
                    i.children(":first-child").clone().appendTo($(this));

                for (var n = 0; n < 4; n++)(i = i.next()).length ||
                    (i = $(this).siblings(":first")),
                    i.children(":first-child").clone().appendTo($(this))
            })

            $('#carousel-example').on('slide.bs.carousel', function (e) {
                var $e = $(e.relatedTarget);
                var idx = $e.index();
                var itemsPerSlide = 5;
                var totalItems = $('.carousel-item').length;

                if (idx >= totalItems - (itemsPerSlide - 1)) {
                    var it = itemsPerSlide - (totalItems - idx);
                    for (var i = 0; i < it; i++) {
                        if (e.direction == "left") {
                            $('.carousel-item').eq(i).appendTo('.carousel-inner');
                        }
                        else {
                            $('.carousel-item').eq(0).appendTo('.carousel-inner');
                        }
                    }
                }
            });

        });
    </script>

</head>
<body class="container-fluid">
   

    <div class="row justify-content-center text-center" style="margin-top:20px;">
        <div class="card w-50 col-lg-2 col-sm-12 col-md-10">
          <div class="card-body">
              <h5 class="card-title totalAmount">Total Amount Raised</h5>
              <div id="amountRaised" class="totalDisplay">£0.0</div>
              <hr style="margin:70px -35px 10px -35px"/>
              <div class="targetlabel">OUR TARGET <span id="targetValue" class="targetval">£0.0</span></div>
              <div class="targetpercentcontainer" style="overflow:auto">

                  <span id="targPercent" class="targetpercent">0%</span>
                  <div id="targProg" class="progress2 circliful progg" data-startdegree="0" data-dimension="145" data-fontsize="36"  data-fgcolor="#f33f46" data-bgcolor="#eee" data-width="5" data-bordersize="5" data-animationstep="2"></div>

                  <div class="whitelabel">OF TARGET RAISED</div>

              </div>
          </div>
        </div>

     <div id='wowza_player'></div><div id='tawk_5efe084b9e5f69442291bf37'></div>

    </div>


  <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date(); Tawk_API.embedded = 'tawk_5efe084b9e5f69442291bf37';
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5efe084b9e5f69442291bf37/1ece4itgg';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
    
<script id='player_embed' src='//player.cloud.wowza.com/hosted/bhchfww2/wowza.js' type='text/javascript'></script>
</body>
</html>