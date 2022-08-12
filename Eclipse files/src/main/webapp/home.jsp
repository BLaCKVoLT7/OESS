<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

.wrapper {
	width: 100%;
	height: 100vh;
	background:url(BG1.jpg);
	background-position: center;
	background-size: cover;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	font-size: 2vw;
	color: #fff;
}

html,body
{
    padding: 0;
    margin: 0;
    
}

.header
{
    position: absolute;
    padding: 0;
    margin: 0;
    width: 100%;
    height: 100px;
            
}


.logo h1
{
    font-family: "Chiller";
    font-size: 50px;
    margin-top: 17px;
    padding-left: 50px;
    padding-bottom: 0;
    margin-bottom: 0;

    
}

.logo h5
{
    font-family: "Tunga";
    font-size: 17px;
    margin-left: 95px;
    margin-top: -18px;
    
}

nav ul
{
    font-family: "Century Gothic";
    box-sizing: border-box;
    list-style: none;
    display: flex;
    letter-spacing: 5px;
    float: right;
    margin-top: -80px;
    margin-right: 30px;

}

nav ul li
{
    list-style: none;
}

nav ul li a
{
    padding: 12px 30px;
    color: #000;
    text-decoration: none;
    text-transform: uppercase;
    transition: .3s;
}

nav ul li a:hover
{
    text-decoration: none;
    color: rgba(255, 255, 255, 0.9);
}

nav ul li a.active
{
    border: 2px solid #FFF;
    border-radius: 6px;
    transition: .3s;
    padding: 10px 20px;
    
}

nav ul li a.active:hover
{
    background: rgba(255, 255, 255, 0.5);
    color: rgba(255, 255, 255, 0.9);
}


.info
{
    font-family: "Century Gothic";
    color: #FFF;
    box-sizing: border-box;
    margin-left: 100px;
    padding-top: 425px;
}

.info p
{
    margin: 30px auto;
    font-size: 15px;
    line-height: 0px;
}

.info h3
{
    font-size: 30px;
    color: rgba(167, 9, 102, 0.70);
}

.info a
{
    text-decoration: none;
    color: #FFF;
    border: 1px solid;
    padding: 5px 10px;
}

.info a:hover
{
    background: rgba(255, 255, 255, 0.5);
}

@keyframes slidy
{
	0%{left: 0%;}
	10%{left: 0%;}
	12%{left: -100%}
	22%{left: -100%;}
	24%{left: -200%;}
	34%{left: -200%;}
	36%{left: -300%;}
	46%{left: -300%;}
	48%{left: -400%;}
	58%{left: -400%;}
	60%{left: -300%;}
	70%{left: -300%;}
	72%{left: -200%;}
	82%{left: -200%;}
	84%{left: -100%;}
	94%{left: -100%;}
	96%{left: 0%;}
	
}

.slider
{
	overflow: hidden;
	height: 438px;
	width: 700px;
	position: absolute;
	top: 18%;
	left: 24%;
	background: rgba(255,255,255,0.3);
	border: 2px solid #FFF;
	border-radius: 6px;
}

.slider figure div
{
	width: 20%;
	float: left;
}

.slider figure img
{
	width: 100%;
	float: left;
}

.slider figure
{
	position: relative;
	width: 500%;
	margin: 0;
	left: 0;
	animation: 20s slidy infinite;
}

footer {
	float: left;
	width: 100%;
	background-color: #808080;
	color: white;
	text-align: center;
	padding-top: 5px;
	padding-bottom: 5px;
	margin-top: 10px;
}

*\css code here *\
</style>



</head>
<body>
	    <div class="header">
            <nav>
                <div class="logo">
                    <h1>Online</h1>
                    <h5>e - Shopping system</h5>        
                </div>
                
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="book.jsp">Products</a></li>
                    <li><a href="aboutUs.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a class ="active" href="welcome.jsp">Log Out</a></li>
                </ul>
                
            </nav>
                            
                
            </div>

	<div class="wrapper">
	</div>
	
	<div class="slider">
		<figure>
				<div class="slide">
					<img src="Image1.jpg">
				</div>
				
				<div class="slide">
					<img src="Image2.jpg">
				</div>
				
				<div class="slide">
					<img src="Image3.jpg">
				</div>
				
				<div class="slide">
					<img src="Image4.jpg">
				</div>
				
				<div class="slide">
					<img src="Image5.jpg">
				</div>
				
		</figure>
	</div>

	<footer>

	<div class="wrap">
		<h5 align="left">Location</h5>
		<image src="Image4.png" align="left" width="150" height="100">
	</div>

	<img align="right" src="Image5.png" width="50" height="50"> <img
		align="right" src="Image6.png" width="50" height="50"> Open 7
	days<br>
	Weekdays:8am-5pm<br>
	Weekend:10am-4pm<br>
	<br>
	<br>
	Copyright @ YATHRA - All rights Reserved</footer>

</body>
</html>








