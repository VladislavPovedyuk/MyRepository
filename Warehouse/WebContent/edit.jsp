<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="items" class="blizzard.warehouse.view.ItemAction" scope="session" />
<html>
<head>
<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#contact {
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
			<li><a href="warehouse">СКЛАД</a></li>
			<li><a href="warehouse.do" onclick="return false"  class="active">РЕДАГУВАННЯ</a></li>
		</ul>
		</div>
		
		<div id="skip-menu"></div>
		<div class="column-right">
			<div class="box">
			<div class="box-top"></div>
			<div class="box-in">
				<center>
				<h3>РЕДАГУВАТИ ТОВАР</h3>
            <s:iterator value="itemToEdit" var="item">
			    <s:form action="commitEdit" method="post">
			    <s:textfield  name="item.id" value="%{id}" readonly="true" label="ID"/>
				<s:textfield name="item.name" value="%{name}" label="Назва товару"/>
				<s:textfield name="item.count" value="%{count}" label="Кількість"/>					
				<s:textfield name="item.unit" value="%{unit}" label="Од. виміру"/>
				<s:submit value="Редагувати" align="center"/>
			    </s:form>
			</s:iterator>
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