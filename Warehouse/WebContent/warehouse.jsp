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
		body, input{
			font-family: Calibri, Arial;
		}
		table#item {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			background-color: #ffee55;
		}
	</style>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>СКЛАД</title>
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
	   $("#addItem").validate({
	   //set the rules for the field names
	   rules: {
	   "item.name": {
	   required: true,
	   minlength: 1,
	   maxlength: 30
	   },
	   
	   "item.count": {
       required: true,
       digits: true,
       minlength: 1,
	   maxlength: 50
       },      
       
       "item.unit": {
           required: true,           
           minlength: 1,
    	   maxlength: 50
       },   
           
      
	  
	   }
	   });
	   });
   </script>
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
			<li><a href="index">ВИЙТИ</a></li>
			<li><a href="warehouse" class="active">СКЛАД</a></li>
		</ul>
		</div>
		
		<div id="skip-menu"></div>
		<div class="column-right">
			<div class="box">
			<div class="box-top"></div>
			<div class="box-in">
				<center>
				<h3>ДОДАТИ ТОВАР</h3>

			<s:form id="addItem" action="add" name="addItem" method="post">
				<s:textfield name="item.name" label="Назва товару"/>
				<s:textfield name="item.count" label="Кількість"/>					
				<s:textfield name="item.unit" label="Од. виміру"/>
				<s:submit value="Додати товар" align="center" />
			</s:form>


			<h2>СПИСОК ТОВАРІВ НА СКЛАДІ</h2>
			<table id="item" border="1">
			<tr>
				<th>Назва товару</th>
				<th>Кількість</th>
				<th>Од. виміру</th>
				<th>Видалити товар</th>
				<th>Змінити товар</th>
			</tr>
			<s:iterator value="itemList" var="item">
				<tr>
					<td><s:property value="name"/></td>
					<td><s:property value="count"/></td>
					<td><s:property value="unit"/></td>
					<td><a href="delete?id=<s:property value="id"/>">Видалити</a></td>
					<td><a href="edit?id=<s:property value="id"/>">Змінити</a></td>
				</tr>	
			</s:iterator>
			</table>
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