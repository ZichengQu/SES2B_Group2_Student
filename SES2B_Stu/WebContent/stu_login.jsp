<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HELPS booking system</title>
 
<link href="css/login.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript">
	$(function(){
		var msg = strConvert(function(){/*
${msg} 
	        */});;
	    console.log(msg);
		if(msg != null&&msg.length!=2){
			alert(msg);
		}
		
		function strConvert(fn){
		    return fn.toString().split('\n').slice(1,-1).join('\n')+'\n';
		}
	});
	//<form action="MyInfo.html" method="get"><!--<form action="StuLogin" method="post">-->
</script>
</head>
	<body>
		<header>
		 <div class="header .logo"></div>
	    </header> 
	    <div id="wrapper">
	    <header>
	    	<div id="left_content">
	    		<div id="text_small">HIGHER EDUCATION LANGUAGE<br>AND PRESENTATION SUPPORT</div>
	    		<div id="text_big">UTS: HELPS</div>		
	    	</div>
	    	<div id="login" class="animate form">
	                <form action="student/login" method="post">
	                    <p>
	                        <label for="username" class="uname"> Student Login</label>
	                    </p>
	                         <input id="username" name="username" required="required" type="text"
	                                    placeholder="student ID" />
	                    <p>
	                        <label for="password" class="youpasswd"> Password </label>
	                    </p>
	                        <input id="password" name="password" required="required" type="password"
	                                    placeholder="password" />
	
	                    <p class="keeplogin">
	                        <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
	                        <span style="color: white; margin-top: 10px;">Keep me logged in</span>
	                    </p>
	                            <!--<p class="login button">
	                                <a href="http://cookingfoodsworld.blogspot.in/" target="_blank">Log in</a>
	                                 change url to next page
	                            </p>-->
	                    <input id="button" type="submit" value="Login"></>
	                </form>
	            </div>
	        </div>
	    </div>
	</body>
<!-- <body>
    <div class="container">
        <header>
            <h1>
            <a herf="https://www.uts.edu.au/current-students/support/helps">UTS:HELPS</a></h1>
        </header>
        Body>
        <section>
            <div id="container_demo">
                hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4 
                <div id="wrapper">
                    <div id="login" class="animate form">
                        <form action="StuLogin" method="post">
                            <h1>Log in</h1>
                            <p>
                                <label for="username" class="uname"> Your email or username </label>
                                <input id="username" name="username" required="required" type="text"
                                    placeholder="myusername or mymail@mail.com" />
                            </p>
                            <p>
                                <label for="password" class="youpasswd"> Your password </label>
                                <input id="password" name="password" required="required" type="password"
                                    placeholder="eg. X8df!90EO" />
                            </p>
                            <p class="keeplogin">
                                <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
                                <label for="loginkeeping">Keep me logged in</label>
                            </p>
                            <p class="login button">
                                <a href="http://cookingfoodsworld.blogspot.in/" target="_blank">Log in</a>
                                 change url to next page
                            </p>
                            <input type="submit" value="Login"></>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    Footer
</body> -->
</html>