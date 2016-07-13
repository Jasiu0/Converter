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
<div class="inner-wrap clearfix">
<div class="home-icon">
<a href="http://gravitytales.com/" title="Gravity Tales"><i class="fa fa-home"></i></a>
<i class="fa fa-bars" aria-hidden="true"></i>

</nav>
	<div id="calculator">
				<div class="configureConverter">Configure converter</div><br>
					<div class="input-data">
					
						<input type="text" class="EuroValue" value="1.00" >
						<div class="Arrow">
						<a>&#8250;</a>
						</div>
					</div> <br><br>
					<div class="euro">
						EUR <h1> ${greeting}</h1>
					</div> <Br><br>
					<div class="select-currency">
					<input type="text" value="" >
					<input type="hidden" name="from" id="from_var" value="EUR">
					</div><br>
				</div>
			</div>
		</div>
	</body>
</html>
