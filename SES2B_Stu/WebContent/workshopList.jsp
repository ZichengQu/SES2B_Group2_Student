<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workshop List</title>
<link rel="shortcut icon" href="#" type="image/x-icon">
<!-- <link href="css/investorstyle.css" rel="stylesheet" type="text/css"> -->
<link href="css/WorkshopList.css" rel="stylesheet" />
<link href="css/header.css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/investorweb.js" type="text/javascript"></script>
<script src="js/Scroll.js" type="text/javascript"></script>
<script>
	function checkDetails(id) {
		/* $("#session").hide();
		$("#detail").show(); */
	}
</script>
<script>
	$(function() {
		$("[id^='detail_']").click(function() {
			var workshop_id = this.id.split("_")[1];
			
			$.ajax({
				url : "workshop/detailWorkshop",
				type : "post",
				data : "workshop_id=" + workshop_id,
				dataType : "text",
				async: false,
				success : function(data) {
					if (data == "success") {
						/* alert("successful"); */
						window.location.href = "workShopDetail.jsp";
					} else {
						alert("failed");
					}
				}
			})

		});
	});
</script>

</head>
<body>

	<div class="Header H2">
		<div class="header_bg"></div>
		<div class="header_content">
			<a href="# class="header_logo "><img id="uts_logo "
				src="img/uts_logo.png "></a>
			<div class="header_contentBlock ">
				<div class="header_ulBlock ">
					<a href="Home.jsp" style="text-decoration: none;"
						class="header_liBlock current ">Home</a> <a href=""
						style="text-decoration: none;" class="header_liBlock ">About
						Helps</a> <a href="# " style="text-decoration: none;"
						class="header_liBlock ">Programs</a> <a href=" "
						style="text-decoration: none;" class="header_liBlock ">My Info</a>
					<a href="workshop/select " style="text-decoration: none;"
						class="header_liBlock ">Registration</a> 
						<a href="# "
						style="text-decoration: none;" class="header_liBlock "></a>
						 <a
						href="# "
						style="color: #444444; font-weight: 600; text-decoration: none;"
						class="header_liBlock1 ">${student.firstName } ${student.lastName }</a> <a href="student/logoff"
						style="text-decoration: none;" class="header_liBlock1 "><img
						style="" src="img/logoff.png " alt=" " width="20 " height="20 "></a>
					<div style="clear: both;"></div>
				</div>
				<div class="header_rightBlock ">
					<div class="header_wcWb "></div>
					<div style="clear: both;"></div>
				</div>
			</div>
			<div style="clear: both;"></div>
		</div>

		<div class="header_onBlock " style="top: 0px">
			<div class="header_onBlockBg " style="display: none;"></div>
			<div class="header_onBlockBg " style="display: none;">
				<div class="BlockBg "></div>
				<div class="header_onBlockIn ">
					<ul class="header_onList wid-2 ">
						<li><a href="# " class="hoverRed"
							style="text-decoration: none;">FAQ</a></li>
						<li><a href="# " class="hoverRed"
							style="text-decoration: none;">...</a></li>
						<li><a href="# " class="hoverRed"
							style="text-decoration: none;">...</a></li>
					</ul>
				</div>
			</div>

			<div class="header_onBlockBg " style="display: none;">
				<div class="header_onBlockIn ">
					<ul class="header_onList wid-7 "></ul>
				</div>
			</div>

			<div class="header_onBlockBg " style="display: none;">
				<div class="BlockBg "></div>
				<div class="header_onBlockIn ">
					<ul class="header_onList wid-4 ">
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="MyInfo.jsp" class="hoverRed">Profile</a></li><!--<li><a href="# ">Profile</a></li>-->
					<li><a href="student/querySW" class="hoverRed">Bookings</a></li>
					</ul>
				</div>
			</div>

			<div class="header_onBlockBg " style="display: none;"></div>

			<div class="header_onBlockBg " style="display: none;"></div>

			<div class="header_onBlockBg " style="display: none;"></div>

			<div class="header_onBlockBg " style="display: none;"></div>
		</div>
	</div>


	<div id="wrapper">
		<div id="container">

			<div id="seName">Improve Your Grammar</div>
			<div id="Tri1" class="triangle-left"></div>


			<div id="session" class="box">
				<div style="margin: 10px;">
					<div
						style="float: right; font-size: 18px; font-weight: 580; line-height: 70px; letter-spacing: 0.8px;">Sessions</div>
					<div class="auo">
						<table align="center" width="500px" class="table table-hover">
							<tr align="left">
								<th>Topics</th>
								<th>Start date</th>
								<th>Finish date</th>
								<th>Days</th>
								<th>Time</th>
								<th>Ses. no.</th>
								<th>Place avail.</th>
								<th>Detail</th>
							</tr>
							<%-- <c:forEach var="SpecificWPList" items="${specificWorkshop }">
					<tr>
						<td>${SpecificWPList.name} </td>
						<td><fmt:formatDate pattern="dd MMM yyyy" value="${SpecificWPList.startDate}"/></td>
						<td><fmt:formatDate pattern="dd MMM yyyy" value="${SpecificWPList.endDate}"/></td>
						<td>${SpecificWPList.days}</td>
						<td><fmt:formatDate pattern="HH:mm" value="${SpecificWPList.startDate}"/></td>
						<td style="text-align: center;">${SpecificWPList.noOfSessions}</td>
						<td style="text-align: center;">${SpecificWPList.placeAvailable}</td>
						<td style="text-align: center;">
							<img src="img/more.png" onclick="checkDetails(1);" style="width: 20px;">
						</td>
					</tr>
					</c:forEach> --%>

							<c:forEach var="ssWPList" items="${ssWorkshop }">
								<tr>
									<td>${ssWPList.name}</td>
									<td><fmt:formatDate pattern="dd MMM yyyy"
											value="${ssWPList.startDate}" /></td>
									<td><fmt:formatDate pattern="dd MMM yyyy"
											value="${ssWPList.endDate}" /></td>
									<td>${ssWPList.days}</td>
									<td><fmt:formatDate pattern="HH:mm"
											value="${ssWPList.startDate}" /></td>
									<td style="text-align: center;">${ssWPList.noOfSessions}</td>
									<td style="text-align: center;">${ssWPList.placeAvailable}</td>
									<td style="text-align: center;"><img src="img/more.png"
										onclick="checkDetails(1);" id="detail_${ssWPList.workShopId }" style="width: 20px;"></td>
								</tr>
							</c:forEach>

							<!-- <tr>
						<td>Improve Your Grammar 2</td>
						<td>20/08/2019</td>
						<td>20/08/2019</td>
						<td>Tue</td>
						<td>10:30-12:00</td>
						<td style="text-align: center;">1</td>
						<td style="text-align: center;">12</td>
						<td style="text-align: center;"><img src="img/more.png" style="width: 20px;"></td>
					</tr>
					<tr>
						<td>Improve Your Grammar 3</td>
						<td>20/08/2019</td>
						<td>20/08/2019</td>
						<td>Tue</td>
						<td>10:30-12:00</td>
						<td style="text-align: center;">1</td>
						<td style="text-align: center;">12</td>
						<td style="text-align: center;"><img src="img/more.png" style="width: 20px;"></td>
					</tr>
					<tr>
						<td>Improve Your Grammar 4</td>
						<td>20/08/2019</td>
						<td>20/08/2019</td>
						<td>Tue</td>
						<td>10:30-12:00</td>
						<td style="text-align: center;">1</td>
						<td style="text-align: center;">12</td>
						<td style="text-align: center;"><img src="img/more.png" style="width: 20px;"></td>
					</tr>
					<tr>
						<td>Improve Your Grammar 5</td>
						<td>20/08/2019</td>
						<td>20/08/2019</td>
						<td>Tue</td>
						<td>10:30-12:00</td>
						<td style="text-align: center;">1</td>
						<td style="text-align: center;">12</td>
						<td style="text-align: center;"><img src="img/more.png" style="width: 20px;"></td>
					</tr>
					<tr>
						<td>Improve Your Grammar 6</td>
						<td>20/08/2019</td>
						<td>20/08/2019</td>
						<td>Tue</td>
						<td>10:30-12:00</td>
						<td style="text-align: center;">1</td>
						<td style="text-align: center;">12</td>
						<td style="text-align: center;"><img src="img/more.png" style="width: 20px;"></td>
					</tr>	 -->
						</table>
					</div>
				</div>
			</div>


			<div id="detail" class="box" style="display: none;">

				<div id="detail_title">
					<span class="left_title">Title</span> <span class="right_content"
						style="padding-left: 150px" id="wname">${detailWorkshop.name}</span>
				</div>
				<div id="detail_room">
					<span class="left_title">Room</span> <span class="right_content"
						style="padding-left: 138px">${detailWorkshop.room}</span>
				</div>
				<div id="detail_date">
					<span class="left_title">Date</span> <span class="right_content"
						style="padding-left: 150px"><fmt:formatDate
							pattern="dd MMM yyyy" value="${detailWorkshop.startDate}" /></span>
				</div>
				<div id="detail_time">
					<span class="left_title">Time</span> <span class="right_content"
						style="padding-left: 150px"><fmt:formatDate pattern="HH:mm"
							value="${detailWorkshop.startDate}" /></span>
				</div>
				<div id="detail_place">
					<span class="left_title">Place Available</span> <span
						class="right_content" style="padding-left: 65px">${detailWorkshop.placeAvailable }</span>
				</div>
				<div style="text-align: center;">
					<input type="button" id="book" value="BOOK" class="button" />
				</div>
			</div>

		</div>
	</div>



	<div id="footer">
		<div class="footer_content">
			<div class="footer_text" style="color: white;">
				Copyright 2019 UTS:Helps <span
					style="position: relative; line-height: 40px; height: 40px; font-weight: bold; color: white; margin-left: 820px;">Follow
					HELPS</span>
			</div>
			<span class="social-media-bar__menu" style="margin-left: 12px;">
				<a href="https://www.facebook.com/UTSHELPS/"><img class="icon"
					src="img/facebook.png"></a> <a
				href="https://twitter.com/uts_helps"><img class="icon"
					src="img/twitter.png"></a> <a
				href="https://www.instagram.com/utshelps/"><img class="icon"
					src="img/instagram.png"></a>
			</span>

		</div>
	</div>


</body>
</html>