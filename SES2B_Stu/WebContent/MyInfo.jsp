<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Information</title>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<link rel="shortcut icon" href="#" type="image/x-icon">
<!-- <link href="css/investorstyle.css" rel="stylesheet" type="text/css"> -->
<link href="css/header.css" rel="stylesheet"/>
<link href="css/MyInfo.css" rel="stylesheet"/>

<style type="text/css">
	#profile{ 
	    margin-top: 30px; 
	    width:80px; 
	    height:80px; 
	    border-radius:200px; 
	}
</style>

<script src="js/investorweb.js" type="text/javascript"></script>
<script src="js/Scroll.js" type="text/javascript"></script>
<!-- <script src="js/MyInfo.js" type="text/javascript"></script> -->
<script>
$(function(){
	$("#photoImg").click(function(){
		$("input[name='upload']:first").click();
	});
	$("input[name='upload']:first").bind('change', function () {
		if(confirm("Change new photo?")==true){
			var file = $(this).val();
			var suffix = file.substr(file.lastIndexOf(".")+1);
			if($(this).context.size>1024*500){
				alert("Please choose a picture no more than 512KB.");
				return false;
			}else if(suffix=="png"||suffix=="jpg"){
				$("#imgUpload").click();
			}else{
				alert("Please choose a valid photo!");
				return false;
			}
		    console.log($(this));
		}else{
			alert("Cancel change");
		}
	    
	    /* if(file.length>0){
	        var suffix = file.substr(file.lastIndexOf("\\")+1);
	        //alert(suffix);
	        $("#fake_btn").hide();
	        $("#fake_btn").after($("<span id='fileName'>"+suffix+"</span>"));
	        var w = $("#fileName").width();
	        var top = parseInt($('.dataTables_filter').offsetTop);//.css("right"));
	        $('.dataTables_filter').css({'right':(top-20+w)+'px'});
	    } */
	});
	
	
	onLoad();
	edit();
	save();
	$("#save").hide();
	/* $("#edit").click(function(){
		$("input[id^='e_']").show();
		$("select[id^='e_']").show();
		$("textarea[id^='e_']").show();
		$("[id^='e_']").show();
		$("span[id^='v_']").hide();
		$("#save").show();
		$("#edit").hide();
		$("#tips").show();
		dataViewToEdit();
		educationBackgroundViewToEdit();
	}); */
	/*$("#save").click(function(){
		 $("input[id^='e_']").hide();
		$("select[id^='e_']").hide();
		$("textarea[id^='e_']").hide();
		$("[id^='e_']").hide();
		$("span[id^='v_']").show();
		$("#save").hide();
		$("#edit").show();
		$("#tips").hide();
		
		dataEditToView();
		educationBackgroundEditToView(); 
	});*/
});

function dataEditToView(){
	var e_name = $("#e_name").val();
	var e_gender = $("input[name='e_gender']:checked").val();
	var e_degree = $("input[name='e_degree']:checked").val();
	var e_year = $('#e_year option:selected').val();
	if(e_year==""){
		$("#sv_year").hide();
	}
	var e_status = $("input[name='e_status']:checked").val();
	var e_language = $('#e_language option:selected').val();
	/* if(e_language=="ChineseM"){
		e_language = "Chinese (Mandarin)";
	}else if(e_language=="ChineseT"){
		e_language = "Chinese (Tranditional)";
	} */
	var e_origin = $('#e_origin option:selected').val();
	var e_background = $('#e_background').val();
	$("#v_name").text(e_name);
	$("#v_gender").text(e_gender);
	$("#v_degree").text(e_degree);
	$("#v_year").text(e_year);
	$("#v_status").text(e_status);
	$("#v_language").text(e_language);
	$("#v_origin").text(e_origin);
	$("#v_background").text(e_background);
}
function dataViewToEdit(){
	var v_name = $("#v_name").text();
	var v_gender = $("#v_gender").text();
	var v_degree = $("#v_degree").text();
	var v_year = $("#v_year").text();
	$("#sv_year").show();
	var v_status = $("#v_status").text();
	var v_language = $("#v_language").text();
	var v_origin = $("#v_origin").text();
	var v_background = $("#v_background").text();
	$("#e_name").val(v_name);
	$("input[name=e_gender][value="+v_gender+"]").attr("checked",true);
	$("input[name=e_degree][value="+v_degree+"]").attr("checked",true);
	$("#e_year [value="+v_year+"]").attr("selected","selected");
	$("input[name=e_status][value="+v_status+"]").attr("checked",true);
	$("#e_language [value='"+v_language+"']").attr("selected","selected");
	$("#e_origin [value="+v_origin+"]").attr("selected","selected");
	$("#e_background").val(v_background);
}

function educationBackgroundViewToEdit(){
	var v_ieltsMark = $("#v_ieltsMark").text();
	var v_toeflMark = $("#v_toeflMark").text();
	var v_greMark = $("#v_greMark").text();
	$("#e_ielts").val(v_ieltsMark);
	$("#e_toefl").val(v_toeflMark);
	$("#e_gre").val(v_greMark);
	var marksTitle=[$("#va_ielts"),$("#va_toefl"),$("#va_gre")];
	for(var i = 0; i<marksTitle.length;i++){
		marksTitle[i].show();
	}
}
function educationBackgroundEditToView(){
	var marksTitle=[$("#va_ielts"),$("#va_toefl"),$("#va_gre")];
	var marks=[$("#e_ielts"),$("#e_toefl"),$("#e_gre")];
	var marksSpan=[$("#v_ieltsMark"),$("#v_toeflMark"),$("#v_greMark")];
	for(var i = 0; i<marks.length;i++){
		if(marks[i].val()!=""){
			marksSpan[i].text(marks[i].val());
		}else{
			marksSpan[i].text("");
			marksTitle[i].hide();
			marksSpan[i].hide();
		}
	}
}
function onLoad(){
	var v_year = $("#v_year").text();
	if(v_year==""){
		$("#sv_year").hide();
	}
	var marksTitle=[$("#va_ielts"),$("#va_toefl"),$("#va_gre")];
	var marks=[$("#e_ielts"),$("#e_toefl"),$("#e_gre")];
	var marksSpan=[$("#v_ieltsMark"),$("#v_toeflMark"),$("#v_greMark")];
	var eduBgMark = ${profile.eduBgMark};
	
	if(eduBgMark!=null&&eduBgMark!=[-1]&&eduBgMark.length!=0){
		//alert("length: "+eduBgMark.length);
		for(var i = 0; i< eduBgMark.length; i++){
			//alert("for: "+i);
			if(eduBgMark[i]!=null&&eduBgMark[i]!=-1&&eduBgMark[i]!=""&&eduBgMark[i]!=undefined){
				marksSpan[i].text(eduBgMark[i]);
				//alert("if: "+i);
			}else{
				//alert("else: "+i);
				marksSpan[i].text("");
				marksTitle[i].hide();
				marksSpan[i].hide();
			}
		}
	}
}
function save(){
	$("#save").click(function(){
		var preferredFirstName = $("#e_name").val();
		var gender = $("input[name='e_gender']:checked").val();
		var degree = $("input[name='e_degree']:checked").val();
		var year = $('#e_year option:selected').val();
		var status = $("input[name='e_status']:checked").val();
		var firstLanguage = $('#e_language option:selected').val();
		var countryOfOrigin = $('#e_origin option:selected').val();
		var eduBgMark1 = $("#e_ielts").val()==""?-1:$("#e_ielts").val();
		var eduBgMark2 = $("#e_toefl").val()==""?-1:$("#e_toefl").val();
		var eduBgMark3 = $("#e_gre").val()==""?-1:$("#e_gre").val();
		var eduBgMark = eduBgMark1+','+eduBgMark2+','+eduBgMark3;
		if(eduBgMark1!=-1&&isNaN(parseInt(eduBgMark1))){
			alert("Please input a valid number for IELTS!");
			return;
		}else if(eduBgMark2!=-1&&isNaN(parseInt(eduBgMark2))){
			alert("Please input a valid number for TOEFL!");
			return;
		}else if(eduBgMark3!=-1&&isNaN(parseInt(eduBgMark3))){
			alert("Please input a valid number for GRE!");
			return;
		}else{
			$("input[id^='e_']").hide();
			$("select[id^='e_']").hide();
			$("textarea[id^='e_']").hide();
			$("[id^='e_']").hide();
			$("span[id^='v_']").show();
			$("#save").hide();
			$("#edit").show();
			$("#tips").hide();
			
			dataEditToView();
			educationBackgroundEditToView();
			
			$.ajax({
	            url:"student/save",
	            contentType:"application/json;charset=UTF-8",
	            data:'{"preferredFirstName":"'+preferredFirstName
	            	+'","gender":"'+gender
	            	+'","degree":"'+degree
	            	+'","year":"'+year
	            	+'","status":"'+status
	            	+'","firstLanguage":"'+firstLanguage
	            	+'","countryOfOrigin":"'+countryOfOrigin
	            	+'","countryOfOrigin":"'+countryOfOrigin
	            	+'","eduBgMark":"'+eduBgMark+'"}',
	            dataType:"text",
	            type:"post",
	            success:function(data){
	            	if(data == "success"){
	            		alert("Update successfully");
	            	} else{
	            		alert("Update failed");
	            	}
	            }
	        });
		}
    });
}
function edit(){
	$("#edit").click(function(){
		$("input[id^='e_']").show();
		$("select[id^='e_']").show();
		$("textarea[id^='e_']").show();
		$("[id^='e_']").show();
		$("span[id^='v_']").hide();
		$("#save").show();
		$("#edit").hide();
		$("#tips").show();
		dataViewToEdit();
		educationBackgroundViewToEdit();
	});
}
function strConvert(fn){
    return fn.toString().split('\n').slice(1,-1).join('\n')+'\n';
}



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
				<a href="Home.jsp" class="header_liBlock current ">Home</a> <!--http://www.rainbow.cn/web/investment/index?menuId=178-->
				<a href="#" class="header_liBlock ">About Helps</a>
				<a href="#" class="header_liBlock ">Programs</a>
				<a href="#" class="header_liBlock ">My Info</a><!--<a href="# " class="header_liBlock ">My Info</a>-->
				<a href="wp_book.jsp" class="header_liBlock ">Registration</a><!--<a href="# " class="header_liBlock ">Registration</a>-->
				<a href="#" class="header_liBlock "></a>
				<a href="#" style="color:#444444;font-weight:600; " class="header_liBlock1 ">${student.firstName } ${student.lastName }</a>
				<a href="student/logoff" class="header_liBlock1 "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a><!--<a href="# " class="header_liBlock "><img style="padding-top: 30px; " src="img/logoff.png " alt=" " width="20 " height="20 "></a>-->
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
					<li><a href="# " class="hoverRed">FAQ</a></li>
					<li><a href="# " class="hoverRed">...</a></li>
					<li><a href="# " class="hoverRed">...</a></li>
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
	<div id="left">
		<a id="photoImg"><img id="profile" src="${pageContext.request.contextPath }/upload/${filename}" onerror="this.src='img/defaultProfile.png'"/></a>
		<form style="display:none" action="student/imgUpload" method="post" enctype="multipart/form-data">
			<input type="file" name="upload" value="edit" />
			<input id="imgUpload" type="submit" value="edit"/>
		</form>
		<table id="fixedInfo" >
			<tr>
				<td class="cell">
					<img  src="img/name.png"/>
				</td >
				<td id="name" class="cell">${student.firstName } ${student.lastName }</td>
			</tr>
			
			<tr>
				<td class="cell">
					<img  src="img/faculty.png"/>
				</td>
				<td id="faculty" class="cell">${student.faculty }</td>
			</tr>
			<tr>
				<td class="cell">
					<img  src="img/course.png"/></td>
				<td id="course" class="cell">${student.course }</td>
			</tr>
			<tr>
				<td class="cell">
					<img  src="img/email.png"/>
				</td>
				<td id="email" class="cell">${student.studentId }</td>
			</tr>
			<tr>
				<td class="cell">
					<img src="img/mobile.png"/>
				</td>
				<td id="mobile" class="cell">${student.mobile }</td>
			</tr>
			<tr>
				<td class="cell">
					<img src="img/DOB.png"/>
				</td>
				<td id="DOB" class="cell">${student.dob }</td>
			</tr>
		</table>		  
	</div>

	<div id="right" class="box">
		<div class="auo">
			<table border="0">
				<tr>
					<td><span class="title">Preferred First Name: </span></td>
					<td><input id="e_name" style="display: none;" /><span id="v_name">${profile.preferredFirstName }</span></td>
				</tr>
				<tr>
					<td><span class="title">Gender: </span></td>
					<td>
						<div id="e_gender" style="display: none;">
							<input type="Radio" name="e_gender" id="e_gendeMF" value="Male"/> M (male)&nbsp;&nbsp;
							<input type="Radio" name="e_gender" id="e_genderF" value="Female"/> F (female)&nbsp;&nbsp;
							<input type="Radio" name="e_gender" id="e_genderX" value="X"/> X (unspecified)
						</div>
						<span id="v_gender">${profile.gender }</span>
					</td>
				</tr>
				<tr>
					<td><span class="title">Degree: </span></td>
					<td>
						<div id="e_degree" style="display: none;">
							<input type="Radio" name="e_degree" value="Undergraduate" id="e_degreeUG"/> Undergraduate
							<input type="Radio" name="e_degree" value="Postgraduate" id="e_degreePG"/> Postgraduate
						</div>
						<span id="v_degree">${profile.degree }</span>
					</td>
				</tr>
				<tr>
					<td><span class="title">Year: </span></td>
					<td>
						<select name="e_year" id="e_year" style="display: none;">
							<option value="1st" >1st<!--<sup>th</sup> year--></option>
							<option value="2nd" >2nd</option>
							<option value="3rd" >3rd</option>
							<option value="4th" >4th</option>
							<option value="5th" >5th</option>
						</select>
						<span id="v_year">${profile.year }</span><span id="sv_year"> year</span>
					</td>
				</tr>
				<tr>
					<td><span class="title">Status: </span></td>
					<td>
						<div id="e_status" style="display: none;">
							<input type="Radio" name="e_status" id="e_statusP" value="Permanent" /> Permanent&nbsp;
							<input type="Radio" name="e_status" id="e_statusU" value="International" /> International
						</div>
						<span id="v_status">${profile.status }</span>
					</td>
				</tr>
				</table>
				<!-- - - - - - - - - - - - - - -->
				<div id="division"></div>
				<!-- - - - - - - - - - - - - - -->
				<table border="0">
				<tr>
					<td><span class="title">First Language: </span></td>
					<td>
						<select name="e_language" id="e_language" style="display: none;">
							<option value="Chinese (Mandarin)">Chinese (Mandarin)</option>
							<option value="Chinese (Tranditional)">Chinese (Tranditional)</option>
							<option value="English" >English</option>
						</select>
						<span id="v_language">${profile.firstLanguage }</span>
					</td>
				</tr>
				<tr>
					<td><span class="title">Country of Origin: </span></td>
					<td>
						<select name="e_origin" id="e_origin" style="display: none;">
							<option value="China" >China</option>
							<option value="Australia" >Australia</option>
							<option value="England" >England</option>
						</select>
						<span id="v_origin">${profile.countryOfOrigin }</span>
					</td>
				</tr>
				<tr>
					<td valign="top"><span id="educationBackground" class="title">Education Background: </span></td>
					<td>
						<span id="va_ielts">IELTS: </span>
						<input id="e_ielts" style="display: none;" placeholder="Mark"/>
						<span style="display: inline-block;" id="v_ieltsMark"></span>
						</br>
						<span id="va_toefl">TOEFL: </span>
						<input id="e_toefl" style="display: none;" placeholder="Mark"/>
						<span id="v_toeflMark"></span>
						</br>
						<span id="va_gre">GRE: </span>
						<input id="e_gre" style="display: none;" placeholder="Mark"/>
						<span id="v_greMark"></span>
					</td>
					<td>
						
					</td>
				
				</tr>
				<tr>
					<td></td>
					<td>
						<textarea id="e_background" placeholder="Other" style="display: none;"></textarea>
						<span id="v_background">Description</span>
					</td>
				</tr>					
			</table>
			<div id="tips">
				<span style="font-weight: bold;">TIPS: </span>
				<span>When you submit your writing to us, we will use it (after removing any of your personal details) for education or research purpose. Is this okay for you.</span>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="Radio" name="e_tips" id="e_tipsY" value="Yes" />&nbsp;Yes&nbsp;&nbsp;
				<input type="Radio" name="e_tips" id="e_tipsN" value="No" />&nbsp;No
			</div>	

			<input type="button" id="edit" value="EDIT" class="button"/>
			<input type="button" id="save" value="SAVE" class="button"/>
<!-- 
				<div class="hh">1</div>
				<div class="hh">2</div> -->

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