<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="gr__rainbow_cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>UTS Helps System</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="css/layer.css">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link rel="shortcut icon" href="#" type="image/x-icon">
		<link href="css/froala_page.css" rel="stylesheet" type="text/css">
		<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
		<link href="css/froala_editor.css" rel="stylesheet" type="text/css">

		<link href="css/animate.min.css" rel="stylesheet" type="text/css">
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link href="css/common.css" rel="stylesheet" type="text/css">
		<!-- <link href="css/investorstyle.css" rel="stylesheet" type="text/css"> -->
		<link href="css/header.css" rel="stylesheet" />

		<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script src="js/web.js" type="text/javascript"></script>
		<script src="js/investorweb.js" type="text/javascript"></script>
		<script src="js/timer.js" type="text/javascript"></script>
		
		<script type="text/javascript">
			function destoryDiv() {
				var div = document.getElementById("layui-layer1");
				div.parentNode.removeChild(div);
			}
			
			var index = 0;
			function change(){
				var pic = ["pic1","pic2","pic3"];
				var img = document.getElementById("Carousel");
				img.src = "img/"+pic[index++%pic.length]+".jpg";
				var a = document.getElementById("a");
				a.href = img.src;
			}
			setInterval("change()",3000);
			
			$(function(){
				current();
				//Get page name without suffix
				function pageName(){
				    var a = location.href;
				    var b = a.split("/");
				    var c = b.slice(b.length-1, b.length).toString(String).split(".");
				    return c.slice(0, 1);
				}
				//Show red underline in the navigation bar
				function current(){
					$("a.header_liBlock").attr("class","header_liBlock");
					var pName = pageName();
					if(pName[0]=="Home"){
						$("a.header_liBlock:eq(0)").attr("class","header_liBlock current");
					}else if(pName[0]=="MyInfo"||pName[0]=="Bookings"){
						$("a.header_liBlock:eq(3)").attr("class","header_liBlock current");
					}else if(pName[0]=="select_WP"||pName[0]=="workshopList"||pName[0]=="workShopDetail"||pName[0]=="wp_book"){
						$("a.header_liBlock:eq(4)").attr("class","header_liBlock current");
					}
				}
				//$(".commonheader").load("Header.html");
			});
			
		</script>

		

	</head>

	<body data-gr-c-s-loaded="true"><input type="hidden" value="http://www.rainbow.cn" id="basePath" name="basePath">
		<input type="hidden" value="" id="path" name="path">

		<style type="text/css">
			html.full,
			html.full body {
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			
			.wrapper {
				width: 100%
			}
		</style>

		<input type="hidden" id="menuId" name="menuId" value="172">

<!--Header Starts-->
<div class="Header H2">
	<div class="home_header"></div>
	<div class="header_content">
		<a href="# class=" header_logo "><img id="uts_logo " src="img/uts_logo.png "></a>
		<div class="header_contentBlock ">
			<div class="header_ulBlock ">
				<a href="#" class="header_liBlock current ">Home</a> <!--http://www.rainbow.cn/web/investment/index?menuId=178-->
				<a href="#" class="header_liBlock ">About Helps</a>
				<a href="#" class="header_liBlock ">Programs</a>
				<a href="MyInfo.jsp" class="header_liBlock ">My Info</a><!--<a href="# " class="header_liBlock ">My Info</a>-->
				<a href="wp_book.jsp" class="header_liBlock ">Registration</a><!--<a href="# " class="header_liBlock ">Registration</a>-->
				<a href="#" class="header_liBlock "></a>
				<a href="#" style="color:#444444;font-weight:600; text-decoration: none;" class="header_liBlock ">${student.firstName } ${student.lastName }</a>
				<a href="student/logoff" class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a><!--<a href="# " class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a>-->
				<div style="clear: both; "></div>
			</div>
			<div class="header_rightBlock ">
				<div class="header_wcWb ">
					<!-- <a href="javascript:; " class="header_wb "></a> <a href="javascript:; " class="header_wc "></a> -->
				</div>
				<div style="clear: both; "></div>
			</div>
		</div>
		<div style="clear: both; "></div>
	</div>
	
	<div class="header_onBlock " style="top:0px ">
		<div class="header_onBlockBg " style="display: none; "></div>
		<div class="header_onBlockBg " style="display: none; ">
			<div class="BlockBg "></div>
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-2 ">
					<li><a href="# ">FAQ</a></li>
					<li><a href="# ">...</a></li>
					<li><a href="# ">...</a></li>
				</ul>
			</div>
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-7 "></ul>
			</div>
		</div>
	
		<div class="header_onBlockBg " style="display: none; ">
			<div class="BlockBg "></div>
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-4 ">
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="MyInfo.jsp">Profile</a></li><!--<li><a href="# ">Profile</a></li>-->
					<li><a href="student/querySW ">Bookings</a></li><!--<li><a href="# ">Bookings</a></li>-->
				</ul>
			</div>
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			<!--<div class="BlockBg "></div>
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-3 ">
					<li><a target="_blank " href="# ">...</a></li>
					<li><a target="_blank " href="# ">...</a></li>
					<li><a target="_blank " href="# ">...</a></li>
				</ul>
			</div>-->
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			<!--<div class="BlockBg "></div>
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-5 ">
					<li><a href="# ">...</a></li>
					<li><a href="# ">...</a></li>
					<li><a target="_blank " href="# ">...</a></li>
					<li><a target="_blank " href="# ">...</a></li>
				</ul>
			</div>-->
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			<!--<div class="BlockBg "></div>
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-6 ">
					<li><a href="# ">...</a></li>
					<li><a href="# ">...</a></li>
					<li><a href="# ">...</a></li>
					<li><a href="# ">...</a></li>
				</ul>
			</div>-->
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			<!--<div class="BlockBg "></div>
			<div class="header_onBlockIn ">
				<ul class="header_onList wid-8 ">
					<li><a href="# ">..</a></li>
					<li><a href="# ">..</a></li>
					<li><a href="# ">..</a></li>
					<li><a target="_blank " href="# ">..</a></li>
					<li><a target="_blank " href="# ">..</a></li>
					<li><a href="# ">..</a></li>
					<li><a href="# ">..</a></li>
					<li><a href="# ">..</a></li>
				</ul>
			</div>-->
		</div>
	</div>
</div>
<!--Header Ends-->
		
		<!--<div class="commonheader"></div>-->
		
		<div class="wrapper" style="height: 562px;">
			<div class="i-center" style="width: 1440px; height: 652px;">
				<div class="i-bg">
					<div class="banner">
						<a id="a" target="_blank"> <img id="Carousel" src="img/pic1.jpg" /></a>
						<ul class="ban_ul">

							<li style="display: none;">

								<a href="#">
									<div class="index_image" style="background:url(http://www.rainbow.cn/uploadPngFile/1481075917177.png) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(http://www.rainbow.cn/uploadPngFile/1481075917177.png,sizingMethod=&#39;scale&#39;);"></div>
								</a>

							</li>

							<li style="display: none;">

								<a href="#">
									<div class="index_image" style="background:url(http://www.rainbow.cn/uploadPngFile/1486431739270.png) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(http://www.rainbow.cn/uploadPngFile/1486431739270.png,sizingMethod=&#39;scale&#39;);"></div>
								</a>

							</li>

							<li style="display: none;">

								<a target="_blank" href="#">
									<div class="index_image" style="background:url(http://www.rainbow.cn/uploadPngFile/1481094057700.png) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(http://www.rainbow.cn/uploadPngFile/1481094057700.png,sizingMethod=&#39;scale&#39;);"></div>
								</a>

							</li>

							<li style="display: none;">

								<a href="#">
									<div class="index_image" style="background:url(http://www.rainbow.cn/uploadPngFile/1486431422178.png) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(http://www.rainbow.cn/uploadPngFile/1486431422178.png,sizingMethod=&#39;scale&#39;);"></div>
								</a>

							</li>

							<li style="display: block;">

								<a href="#">
									<div class="index_image" style="background:url(http://www.rainbow.cn/uploadPngFile/1486432388092.png) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(http://www.rainbow.cn/uploadPngFile/1486432388092.png,sizingMethod=&#39;scale&#39;);"></div>
								</a>

							</li>

							<li style="display: none;">

								<a target="_blank" href="#">
									<div class="index_image" style="background:url(http://www.rainbow.cn/uploadPngFile/1479182240543.png) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(http://www.rainbow.cn/uploadPngFile/1479182240543.png,sizingMethod=&#39;scale&#39;);"></div>
								</a>

							</li>

						</ul>
						<div class="ban-block">

						</div>
					</div>
				</div>
			</div>
		</div>
<div class="wrapbot" style="z-index: 999;">
   <div class="i-btm" id="middle">
    <div class="i-btm-in">
     <div class="i-b-news">
      <div class="n-title">
       <a href=" " class="n-t-r fr">More +</a>
       <div class="n-t-l fl">Latest News</div>
       <div class="clear"></div>
      </div>
      <a href="#" class="i-b-na">
       <div class="n-cont">
        <div class="n-c-r fr">
         <div class="n-c-rt" style="height: 19px;overflow: hidden;color:#444444;font-weight:600;">WriteNow! Writing support sessions @ HELPS</div>
         <div class="n-c-rc" style="height: 52px;overflow: hidden;color:#666666;">
          The sessions run 1:00 pm to 4:00 pm Monday to Thursday from Week 2 to Week 12.<br>They are held in the HELPS office (CB01.05.25)<br>Registration is NOT required.
         </div>
        </div>
        <div class="n-c-l fl">Week 2-12</div>
        <div class="clear"></div>
       </div>
      </ a>
     </div>

     <div class="i-b-news2">
      <div class="n-title">
       <a href="#" class="n-t-r fr">More +</a>
       <div class="n-t-l fl">Popular Questions</div>
       <div class="clear"></div>
      </div>

      <div class="n-cont2">
       <div class="n-c-r2 fr">
        <div class="n-c-rt" style="height: 19px;overflow: hidden;color:#444444;font-weight:550;font-size:13px;">Who can use HELPS?</div>
        <div class="n-c-rt" style="height: 19px;overflow: hidden;color:#444444;font-weight:550;font-size:13px;">How much does it cost?</div>
        <div class="n-c-rt" style="height: 19px;overflow: hidden;color:#444444;font-weight:550;font-size:13px;">Can you proofread and correct my assignment?</div>
        <div class="n-c-rt" style="height: 19px;overflow: hidden;color:#444444;font-weight:550;font-size:13px;">Can I practise my seminar presentation with someone?</div>
        <!--<div class="n-c-rc" style="height: 52px;overflow: hidden;color:#666666;">Test！</div>-->
       </div>
       <div class="clear"></div>
      </div>

     </div>

     <div class="clear"></div>
    </div>
   </div>

	<div class="Footer F2">
    <div class="footer_content">
     <div class="footer_text">Copyright  2019 UTS:Helps
     <span style="position:relative;line-height:40px;height:40px;font-weight:bold;color:white; margin-left: 820px;">Follow HELPS</span>
     </div>
     <span class="social-media-bar__menu" style="margin-left: 12px;">
              <a href="https://www.facebook.com/UTSHELPS/"><img class="icon" src="img/facebook.png"></a>
              <a href="https://twitter.com/uts_helps"><img class="icon" src="img/twitter.png"></a>
              <a href="https://www.instagram.com/utshelps/"><img class="icon" src="img/instagram.png"></a>
     </span>
    
    </div>
   </div>
		<script src="js/banner.js" type="text/javascript"></script>
		<script src="js/client.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function() {
				var wHeight = $(window).height();
				var resize = function() {
					if (client.system.iphone || client.system.ipad || client.system.ipod || client.system.android || client.system.nokiaN || client.system.winMobile) {
						$(".wrapper").css({
							"height": "568px"
						});
						$(".i-center").css({
							"height": "568px"
						});
						$(".wrapbot").addClass("current");
					} else {
						wHeight = $(window).height();
						var h = wHeight - 210;
						$(".wrapper").css({
							"height": h + "px"
						});
					}
				}
				resize();
				$(window).resize(function() {
					resize();
				})
			})
		</script>

	</body><span class="gr__tooltip"><span class="gr__tooltip-content"></span><i class="gr__tooltip-logo"></i><span class="gr__triangle"></span></span>

</html>