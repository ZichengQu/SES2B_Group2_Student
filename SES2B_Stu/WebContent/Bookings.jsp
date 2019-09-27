<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookings</title>
<link rel="shortcut icon" href="#" type="image/x-icon">
<!-- <link href="css/investorstyle.css" rel="stylesheet" type="text/css"> -->
<link href="css/Bookings.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/header.css" rel="stylesheet"/>
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<script src="js/investorweb.js" type="text/javascript"></script>
<script src="js/Scroll.js" type="text/javascript"></script>
<script>
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
		$("[id^='del_']").click(function(){
			var workshop_id = this.id.split("_")[1];
			if(confirm("confirm cancel?")){
				$.ajax({
					url:"student/delWorkShop",
					type:"post",
					data:"workshop_id="+workshop_id,
					dataType:"text",
					success:function(data){
						if(data == "success"){
		            		alert("Cancel Successfully!");
		            		window.location.reload(true);
		            	} else{
		            		alert("Cancel failed");
		            	}
					}
				});
			}
		});
	});
</script>
</head>
<body>
<!--Header Starts-->
<div class="Header H2">
	<div class="header_bg"></div>
	<div class="header_content">
		<a href="# class=" header_logo "><img id="uts_logo " src="img/uts_logo.png "></a>
		<div class="header_contentBlock ">
			<div class="header_ulBlock ">
				<a href="Home.jsp" style="text-decoration: none;" class="header_liBlock current ">Home</a> <!--http://www.rainbow.cn/web/investment/index?menuId=178-->
				<a href="#" style="text-decoration: none;" class="header_liBlock ">About Helps</a>
				<a href="#" style="text-decoration: none;" class="header_liBlock ">Programs</a>
				<a href="MyInfo.jsp" style="text-decoration: none;" class="header_liBlock ">My Info</a><!--<a href="# " class="header_liBlock ">My Info</a>-->
				<a href="wp_book.jsp" style="text-decoration: none;" class="header_liBlock ">Registration</a><!--<a href="# " class="header_liBlock ">Registration</a>-->
				<a href="#" style="text-decoration: none;" class="header_liBlock "></a>
				<a href="#" style="color:#444444;font-weight:600;text-decoration: none; " class="header_liBlock1 ">${student.firstName } ${student.lastName }</a>
				<a href="student/logoff" style="text-decoration: none;" class="header_liBlock1 "><img style="" src="img/logoff.png " alt=" " width="20 " height="20 "></a><!--<a href="# " class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a>-->
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
					<li><a href="MyInfo.jsp" class="hoverRed">Profile</a></li><!--<li><a href="# ">Profile</a></li>-->
					<li><a href="student/querySW" class="hoverRed">Bookings</a></li><!--<li><a href="# ">Bookings</a></li>-->
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
		<div id="rec" class="rectangle"></div>
		<div id="cir1" class="circle"></div>
		<div id="cir2" class="circle"></div>
		
			<div id="seName">Sessions</div>
			 <div  id="Tri1" class="triangle-left"></div>
			<div id="session" class="box">
				<div class="ss" style="padding: 50px;">
				<div class="auo">	
					<table align="center" width="500px" class="table table-hover">
						<tr align="left">
							<th>Topics</th>
							<th>Date</th>
							<th>Time</th>
							<th>Location</th>
							<th>Advisor</th>
							<th>Type</th>
						</tr>
						<c:forEach var="thisSession" items="${sessions }">
						  	<tr align="left">
						  		<td>${thisSession.subjectName }</td>
							  	<td><fmt:formatDate pattern="dd MMM yyyy" value="${thisSession.date }" /></td>
							  	<td><fmt:formatDate pattern="HH:mm" value="${thisSession.startTime }" /></td>
							  	<td>${thisSession.room.campus }/${thisSession.room.level }/${thisSession.room.roomNumber }</td>
							  	<td>${thisSession.advisor.firstName } ${thisSession.advisor.lastName }</td>
							  	<td>${thisSession.type }</td>
						 	</tr>
					  </c:forEach>
					</table>
				</div></div>
			</div> 
		
		
			<div id="wsName">Workshop</div>
			<div  id="Tri2" class="triangle-left"></div>
			<div id="workshop" class="box" style="padding: 20px 50px 20px 50px;">
				<div class="auo">	
					
					<div style="float: left; font-size: 18px; font-weight: 580; line-height: 70px; letter-spacing: 0.8px;">Upcoming</div>
					<table align="center" width="500px" class="table table-hover">
						<tr align="left">
							<th>Topics</th>
							<th>Start date</th>
							<th>Finish date</th>
							<th>Days</th>
							<th>Time</th>
							<th>Room</th>
							<th>Sessions no.</th>
							<th>Cancel</th>
						</tr>
						<c:forEach var="workShop" items="${upcoming }">
						  	<tr align="left">
							  	<td>${workShop.name }</td>
							  	<td><fmt:formatDate pattern="dd MMM yyyy" value="${workShop.startDate }" /></td>
							  	<td><fmt:formatDate pattern="dd MMM yyyy" value="${workShop.endDate }" /></td>
							  	<td>${workShop.days }</td>
							  	<td><fmt:formatDate pattern="HH:mm" value="${workShop.startDate }"/></td>
							  	<td>${workShop.room.campus }/${workShop.room.level }/${workShop.room.roomNumber }</td>
							  	<td>${workShop.noOfSessions }</td>
							  	<td><input class="btn btn-primary btn-sm" type="button" value="Cancel" id="del_${workShop.workShopId}"/></td>
						 	</tr>
					 	</c:forEach>
					</table>
					
					<div style="float: left; font-size: 18px; font-weight: 580; line-height: 70px; letter-spacing: 0.8px;">Past</div>
					<table align="center" width="500px" class="table table-hover">
						<tr align="left">
							<th>Topics</th>
							<th>Start date</th>
							<th>Finish date</th>
							<th>Days</th>
							<th>Time</th>
							<th>Room</th>
							<th>Sessions no.</th>
						</tr>
						<c:forEach var="workShop" items="${past }">
						  	<tr align="left">
							  	<td>${workShop.name }</td>
							  	<td><fmt:formatDate pattern="dd MMM yyyy" value="${workShop.startDate }" /></td>
							  	<td><fmt:formatDate pattern="dd MMM yyyy" value="${workShop.endDate }" /></td>
							  	<td>${workShop.days }</td>
							  	<td><fmt:formatDate pattern="HH:mm" value="${workShop.startDate }"/></td>
							  	<td>${workShop.room.campus }/${workShop.room.level }/${workShop.room.roomNumber }</td>
							  	<td>${workShop.noOfSessions }</td>
						 	</tr>
					  </c:forEach>
					</table>
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