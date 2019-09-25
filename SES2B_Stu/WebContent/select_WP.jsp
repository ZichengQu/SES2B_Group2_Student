<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<meta charset="UTF-8">
<title>Bookings</title>
<link rel="shortcut icon" href="#" type="image/x-icon">
<link href="css/investorstyle.css" rel="stylesheet" type="text/css">

<link href="css/select_WP.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<script src="js/investorweb.js" type="text/javascript"></script>
<script src="js/Scroll.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#WPlist").change(function(){
		window.location.href="workshop/selectss?skillsetId="+$(this).val();
		/* document.getElementById("#WPlist").options.legth=0; */
	});
});
</script>
<body >
<!--Header Starts-->
<div class="Header H2">
	<div class="header_bg"></div>
	<div class="header_content">
		<a href="# class=" header_logo "><img id="uts_logo " src="img/uts_logo.png "></a>
		<div class="header_contentBlock ">
			<div class="header_ulBlock ">
				<a href="UtsHelpsHome.html" class="header_liBlock current ">Home</a> <!--http://www.rainbow.cn/web/investment/index?menuId=178-->
				<a href="" class="header_liBlock ">About Helps</a>
				<a href="# " class="header_liBlock ">Programs</a>
				<a href="MyInfo.html " class="header_liBlock ">My Info</a><!--<a href="# " class="header_liBlock ">My Info</a>-->
				<a href="Wp_book.html " class="header_liBlock ">Registration</a><!--<a href="# " class="header_liBlock ">Registration</a>-->
				<a href="# " class="header_liBlock "></a>
				<a href="# " style="color:#444444;font-weight:600; " class="header_liBlock ">ZICHENG QU</a>
				<a href="stu_login.html" class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a><!--<a href="# " class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a>-->
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
					<li><a href="MyInfo.html ">Profile</a></li><!--<li><a href="# ">Profile</a></li>-->
					<li><a href="Bookings.html ">Bookings</a></li><!--<li><a href="# ">Bookings</a></li>-->
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
		
		<div id="wrapper">
		<div id="container">
            <div id="Popular">
                    <div id="cir1" class="circle">
                    <a href="workshop/click?type=writ">
                    <img id="writingImg" src="img/writing.png" >
                    </a>
                    </div>
                   
                    <div id="cir2" class="circle">
                    <a href="workshop/click?type=grammar">
                    <img id="writingImg" src="img/grammar-01.png" >
                    </a></div>
                    <div id="cir3" class="circle">
                 <a href="workshop/click?type=speak">
                <img id="writingImg" src="img/speaking.png" >
                </a></div>
                <div id="label"></div>
                <div id="writing">Writing</div>
                <div id="grammar">Grammar</div>
                <div id="speaking">Speaking</div>
            </div>
                
        
             </div>
             <div id="selection">
			<select id="WPlist">
			
                <option value="" selected>Please choose one skill set that you want to improve</option>
                <c:forEach var="skillSet" items="${skillSets }">
			    <option  class="option" value="${skillSet.skillSetId}">${skillSet.name }</option>
			    
			   <!--  <option class="option" >Improve Your Writing</option>
			    <option class="option" >Improve Your Speaking</option>
			    <option class="option" >U:Pass</option> -->
			    </c:forEach>
            </select>
            
            <!-- <img id="arrow" src="img/arrowbelow.png" width="40" height="40"> -->
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
