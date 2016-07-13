 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file="index.css" %></style>
    
<script src="https://use.fontawesome.com/726dbe5e30.js"></script>
    
<title>Converter</title>
</head>

	<body class="custom-background">
		<div id ="page">
			<div id="header">
				<h1 id="title">
					Converter 
				</h1>
				<p id="side-description">
					Calculator of Euro to another Currency
				</p>
			</div>
			<div class="main">
			<nav id="site-navigation" class="main-navigation clearfix" role="navigation">
<div class = "options-bar">
<a href="http://localhost:8080/converter/" title="Home"><i class="fa fa-home"></i></a>
<a title="Navigate"><i class="fa fa-bars" aria-hidden="true"></i></a>
</div>
</nav>
	<div id="calculator">
				<div class="Converter-sub-title">Configure converter</div><br><Br>
					<div class="input-data">
					
						<input type="text" class="EuroValue" value="1.00" >
						<div class="Arrow">
						<a>&#8250;</a>
						</div>
					</div> <br><br>
					<div class="Currency-from">
						EUR
					</div> <Br><br>
					<div class="select-currency">
					<input type="text" value="" >
					<input type="hidden" name="from" id="from_var" value="EUR">
					</div><br><br>
	</div>
	<div class="currency-calculator">
			<div class="Converter-sub-title">
				Currency Calculator</div><br>
				
						<div class="ccOutputBx">
			 		<span class="ccOutputTxt">1.00 EUR =</span>		  
		 			 <span class="ccOutputRslt">0.83<span class="ccOutputCode"> GBP</span></span>
				</div>
				<span class="calOutputTS">${date}</h1></span>
				<br><br>
				<div class="rates-link">
				View
				<a href="" >EUR Rates Table ${parseXml}</a>
				</div>
				<br><Br>
				</div>	<br>
			</div>		
		</div>		
	</body>
</html>
