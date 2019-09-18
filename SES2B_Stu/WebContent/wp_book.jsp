<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HELPS booking system</title>
</head>
<meta charset="UTF-8">
<title>Bookings</title>
<link rel="shortcut icon" href="#" type="image/x-icon">
<link href="css/investorstyle.css" rel="stylesheet" type="text/css">
<link href="css/WpBook.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/header.css" rel="stylesheet"/>
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<script src="js/investorweb.js" type="text/javascript"></script>
<script src="js/Scroll.js" type="text/javascript"></script>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootstrap-tooltip.js" type="text/javascript"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	$(function(){
		$('#triggerBtn').click();
			$('#myModal').on('shown.bs.modal', function () {
		  	$('#myInput').focus();
		});
	});
</script>
<body>
<!--Header Starts-->
<div class="Header H2">
	<div class="header_bg"></div>
	<div class="header_content">
		<a href="# class=" header_logo "><img id="uts_logo " src="img/uts_logo.png "></a>
		<div class="header_contentBlock ">
			<div class="header_ulBlock ">
				<a href="UtsHelpsHome.html" style="text-decoration: none;" class="header_liBlock current ">Home</a> <!--http://www.rainbow.cn/web/investment/index?menuId=178-->
				<a href="" style="text-decoration: none;" class="header_liBlock ">About Helps</a>
				<a href="# " style="text-decoration: none;" class="header_liBlock ">Programs</a>
				<a href="MyInfo.html " style="text-decoration: none;" class="header_liBlock ">My Info</a><!--<a href="# " class="header_liBlock ">My Info</a>-->
				<a href="Wp_book.html " style="text-decoration: none;" class="header_liBlock ">Registration</a><!--<a href="# " class="header_liBlock ">Registration</a>-->
				<a href="# " style="text-decoration: none;" class="header_liBlock "></a>
				<a href="# " style="color:#444444;font-weight:600;text-decoration: none; " class="header_liBlock1 ">ZICHENG QU</a>
				<a href="stu_login.html" style="text-decoration: none;" class="header_liBlock1 "><img style="" src="img/logoff.png " alt=" " width="20 " height="20 "></a><!--<a href="# " class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a>-->
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
					<li><a href="# " class="hoverRed" style="text-decoration: none;">FAQ</a></li>
					<li><a href="# " class="hoverRed" style="text-decoration: none;">...</a></li>
					<li><a href="# " class="hoverRed" style="text-decoration: none;">...</a></li>
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
					<li><a href="MyInfo.html " class="hoverRed" style="text-decoration: none;">Profile</a></li><!--<li><a href="# ">Profile</a></li>-->
					<li><a href="Bookings.html " class="hoverRed" style="text-decoration: none;">Bookings</a></li><!--<li><a href="# ">Bookings</a></li>-->
				</ul>
			</div>
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			
		</div>

		<div class="header_onBlockBg " style="display: none; ">
			
			
		</div>
	</div>
</div>
<!--Header Ends-->
		
		<div id="wrapper">
			<div id="container">
				<!-- Button trigger modal -->
		<button id="triggerBtn" style="display: none;" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"></button>
		<a href="WorkshopList.html" class="btn btn-primary btn-lg active" role="button">Temporary link</a>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document" style="margin-left: 22%; margin-top: 15%">
		    <div class="modal-content" style="background-color: rgba(255, 255, 255, 0.70); width: 800px; height: 415px;">
		    	<div style="margin: 15px; border: 1px dashed #9c9b9b; border-radius: 2px;">
		      <div class="modal-header" style="border: none; padding-top: 45px; padding-bottom: 0;">
		        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
		        <center><span class="modal-title" id="myModalLabel" style="font-size: 18px; font-weight: 600; letter-spacing: 1.2px;">TIPS for workshop booking</span></center>
		      </div>
		      <div class="modal-body" style="font-size: 16px; letter-spacing: 0.8px; line-height: 45px; padding-left: 30px; padding-right: 25px;">
		        <div ><span style="font-weight: 600;">Check </span><span>the time to ensure that there is no timetable clash</span></div>
		        <div ><span style="font-weight: 600;">Check </span><span>your email (UTS email address) for the booking confirmation</span></div>
		        <div style="line-height: 20px;"><span style="font-weight: 600;">Cancel</span><span>, if no longer available, 24 hours before the scheduled session by clicking on ‘My Booking’ tab and then the ‘detail’ link</span></div>

				<div style="font-size: 14px; letter-spacing: 0.4px; line-height: 18px; margin-top: 30px; font-weight: 450; color: #5f5f5f;">Please know that failing to turn up for your registered workshop is not fair to those on the waiting list. Repeat offenders (2 no-shows) may be barred from registering for workshops.</div>
		      </div>
		      <div class="modal-footer" style="border: none; padding-bottom: 32px;">
		        <center><button type="button" class="btn btn-default" data-dismiss="modal" style="font-size: 16px; color: red; letter-spacing: 2px; width: 160px; border-color: #828282;">I know</button></center>
		        <!--<button type="button" class="btn btn-primary">Save changes</button>-->
		      </div>
		    </div>
		</div>
		  </div>
		</div>
			</div>
		</div>
		<div id="footer" >
		    <div class="footer_content">
		    	 <div class="footer_text" style="color:white;">Copyright  2019 UTS:Helps
		     		<span style="position:relative;line-height:40px;height:40px;font-weight:bold;color:white; margin-left: 820px;">Follow HELPS</span>
		     	</div>
		    	<span class="social-media-bar__menu" style="margin-left: 12px;">
		              <a href="https://www.facebook.com/UTSHELPS/"><img class="icon" src="img/facebook.png"></a>
		              <a href="https://twitter.com/uts_helps"><img class="icon" src="img/twitter.png"></a>
		              <a href="https://www.instagram.com/utshelps/"><img class="icon" src="img/instagram.png"></a>
		     	</span>
    		</div>
   		</div> 
</body>
</html>