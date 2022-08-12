<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">

function alert_on_submit() {
	
	alert("Transaction succeed!");
	}	


function randima_calc() 
{
  var price = document.getElementById("Product_price").innerHTML;
  var noTickets = document.getElementById("noOfProdcut").value;
  var total = parseFloat(price) * noTickets
  if (!isNaN(total))
    document.getElementById("amount").innerHTML = total
}

function validate(evt) {
	  var theEvent = evt || window.event;

	  // Handle paste
	  if (theEvent.type === 'paste') {
	      key = event.clipboardData.getData('text/plain');
	  } else {
	  // Handle key press
	      var key = theEvent.keyCode || theEvent.which;
	      key = String.fromCharCode(key);
	  }
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	}



</script> 



<title>Payment</title>
<style type="text/css">

html,body
{
    padding: 0;
    margin: 0;
    background: url(BG3.jpg);
    background-position: center;
    background-size: cover;
    
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
	color:#FFF;
    
}

.logo h5
{
    font-family: "Tunga";
    font-size: 17px;
    margin-left: 95px;
    margin-top: -18px;
    color:#FFF;
    
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


section.sec1
{
    margin: 0;
    padding: 0;
    width: 100%;
    height: 75%;
    overflow: hidden;

}

section.sec2
{
    position: absolute;
    top: 70%;
    width: 100%;
    height: 75%;
    overflow: hidden;
    background:rgb(53, 53, 53);
}

.menu
{
    margin: 0;
    padding: 0;
    top: 15%;
    width: 100%;
    height: 40px;
    background: rgba(255, 255, 255, 0.3);
    position: absolute;
}

.menu ul
{
    display: flex;
    float: left;
    list-style: none;
    margin-left: -40px;
}

.menu ul li
{
    list-style: none;
    font-size: 15px;
    padding:  0px 30px;
    margin-top: -12px;


}

.menu ul li a
{
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #000;
    text-decoration: none;
    font-family: "Tunga";
    font-size: 20px;
}

.menu ul li a:hover
{
    color: #FFF;
}

.title-bar
{
    margin: 0;
    padding: 0;
    top: 21.5%;
    width: 100%;
    height: 40px;
    background: rgba(255, 255, 255, 0.3);
    position: absolute;
    text-align: center;
}

.title-bar p
{
    margin-top: -3px;
    font-family: "Tunga";
    text-transform: uppercase;
    color: #FFF;
    font-size: 30px;
}

.payment-box
{
	width: 320px;
	height: 710px;
	background: rgba(0, 0, 0, 0.4);
	color: #FFF;
	top: 86%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
    padding: 20px 30px;
    font-family: "Candara";
    border: 2px solid #FFF;
    border-radius: 5px;
}

.payment-box h1
{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 25px;
    
}

.payment-box p
{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.payment-box input
{
    width: 100%;
    margin-bottom: 20px;
    
}

.payment-box input[type="text"], input[type="number"]
{
    border: none;
    border-bottom: 1px solid #FFF;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}

.payment-box input[type="submit"]
{
    margin-top: 8px;
    border: 1px solid #FFF;
    outline: none;
    height: 40px;
    background: none;
    color: #FFF;
    font-size: 18px;
    border-radius: 6px;  
}

.payment-box input[type="submit"]:hover
{
    cursor: pointer;
    background: rgba(255, 255, 255, 0.3);
    color: #FFF;
    
}

.payment-box a
{
    text-decoration: none;
    font-size: 14px;
    color: rgba(255, 255, 255, 0.2);
}

.payment-box a:hover
{
    color: #FFF;
}

</style>

</head>
<body>

            <div class="header">
                <nav>
                    <div class="logo">
                        <h1>Online</h1>
                        <h5>e - Shopping System</h5>        
                    </div>
                
                    <ul>
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="book.jsp">Book</a></li>
                        <li><a href="aboutUs.jsp">About</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a class ="active" href="welcome.jsp">Log Out</a></li>
                    </ul>
                
                </nav>
                            
                
            </div>
            
            <section class="sec1">
                <div class="menu">
                    <ul>
                    	<li><a href="products.jsp">Products</a></li>
                        <li><a href="booking.jsp">Add to Cart</a></li>
                        <li><a href="payment.jsp">Payment</a></li>
                    </ul>
                
                </div>
                <div class="title-bar">
                    <p>PAYMENT</p> 
                </div>
            </section>
            <section class="sec2"></section>
            
            <div class="payment-box">
                		
                		 <h1>Pay Now</h1>
                
                    <form action="ServletPayment" method="POST" name="myForm">
                        <p>Name</p>
                        <input type="text" name="username" required>
                        <p>Email</p>
                        <input type="email" name="email" required>
                        
						<p>Number of Products :<input required id="noOfTickets" name="noOfProducts" type="number" min="0" max="60" oninput="randima_calc()" /> </p>
						<p>Price Per product : Rs:<span id="ticket_price">100</span></p>
						<br>
						<br>
						<p>Subtotal : Rs:<span id="amount" type="number" name="amount"></span></p>
                        <br>  
                        
                        <p>Credit Card Number</p>
                        <input required type="text" name="credit" onkeypress='validate(event)'>
                        <lable>Bank</lable>
                        <select required id="option1" name="name">
                         	<option value=""></option>
	  	                    <option value="BOC">BOC</option>
	  	                    <option value="HNB">HNB</option>
	  	                    <option value="DFCC">DFCC</option>
	  	                 </select>                       
                        
                        <a href="home.jsp"><input type="submit" name="submit" value="Submit" onsubmit="alert_on_submit()"/> </a>
                        
                        
                    </form>
                		
                		
            </div> 
            
</body>
</html>