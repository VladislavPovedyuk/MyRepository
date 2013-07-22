
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />
<script type="text/javascript" src="scripts/jquery.js"  charset='windows-1251'></script>
<script type="text/javascript" src="scripts/jquery.validate.js"  charset='windows-1251'></script>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<style>
		.error {
		color: red;
		font: 12pt verdana;
		padding-left: 10px
		}
    </style>
    
   
     <script type="text/javascript"> 
   
	 //initiate validator on load
	   $(function() {
	   // validate contact form on keyup and submit
	   $("#RegForm").validate({
	   //set the rules for the field names
	   rules: {
	   "user.login": {
	   required: true,
	   minlength: 2,
	   maxlength: 30
	   },
	   
	   "user.password": {
       required: true,
       minlength: 5,
	   maxlength: 50
       },      
	  
	   }
	   });
	   });
   </script>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>СКЛАД</title>
</head>

<body>
<div id="wrapper">

	<!-- Title -->
	<div class="title">
		<div class="title-top">
		<div class="title-left">
		<div class="title-right">
		<div class="title-bottom">
		<div class="title-top-left">
		<div class="title-bottom-left">
		<div class="title-top-right">
		<div class="title-bottom-right">
		<h1><a href="/" title="Go to homepage">НАШ <span>СКЛАД</span></a></h1>
			<p>ООО "ЗАВЖДИ СВІЖІ ПРОДУКТИ"</p>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
	</div>
	<!-- Title end -->

<hr class="noscreen" />

	<div class="content">

	<div class="column-left">
		<h3>МЕНЮ :</h3>
		<a href="#skip-menu" class="hidden"></a>
		<ul class="menu"> 
			<li><a href="index">ГОЛОВНА</a></li>
			<li><a href="warehouse.do" onclick="return false">СКЛАД</a></li>
			<li><a href="warehouse.do" onclick="return false"  class="active">РЕЄСТРАЦІЯ</a></li>
		</ul>
		</div>
		
		<div id="skip-menu"></div>
		<div class="column-right">
			<div class="box">
			<div class="box-top"></div>
			<div class="box-in">
				
				<div style="color:red">
            
       		 </div>
	        <center>
	        <h3>Реєстрація</h3>	       
	     	<s:form id="RegForm" name="RegForm" action="doregister" method="post">
			<s:textfield name="user.login" label="Логін"/>
			<s:password name="user.password" label="Пароль"></s:password>
			<s:submit value="Реєстрація" align="center"/>
			</s:form>       
	        
	      
	        </center>
							   
			</div>
			</div>

			<div class="box-bottom">

<hr class="noscreen" />

			<div class="footer-info-left"><a href="/">Поведюк В.Ю. КН-08-1</a>, 2012. </div> 
			
		</div>

	<div class="cleaner">&nbsp;</div>
	</div>	
</div>

</body>
</html>


</body>
</html>