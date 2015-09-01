﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

    <head>
	<meta charset="utf-8" />
	<title>Move Product</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template." name="description" />
	<meta content="Muhammad Usman" name="author" />

	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-united.css" rel="stylesheet" />
	<style type="text/css">
	    body {
		padding-bottom: 40px;
	    }
	    .sidebar-nav {
		padding: 9px 0;
	    }
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet" />
	<link href="css/charisma-app.css" rel="stylesheet" />
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
	<link href="css/fullcalendar.css" rel="stylesheet" />
	<link href="css/fullcalendar.print.css" media="print" rel="stylesheet" />
	<link href="css/chosen.css" rel="stylesheet" />
	<link href="css/uniform.default.css" rel="stylesheet" />
	<link href="css/colorbox.css" rel="stylesheet" />
	<link href="css/jquery.cleditor.css" rel="stylesheet" />
	<link href="css/jquery.noty.css" rel="stylesheet" />
	<link href="css/noty_theme_default.css" rel="stylesheet" />
	<link href="css/elfinder.min.css" rel="stylesheet" />
	<link href="css/elfinder.theme.css" rel="stylesheet" />
	<link href="css/jquery.iphone.toggle.css" rel="stylesheet" />
	<link href="css/opa-icons.css" rel="stylesheet" />
	<link href="css/uploadify.css" rel="stylesheet" />


	<link href="css/my_css.css" rel="stylesheet" />

	<!--MY LINKS FOR jQuery SLIDER-->


	<link href="nivo-slider/themes/default/default.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="nivo-slider/themes/light/light.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="nivo-slider/themes/dark/dark.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="nivo-slider/themes/bar/bar.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="nivo-slider/nivo-slider.css" media="screen" rel="stylesheet" type="text/css" />
	<!-- <link rel="stylesheet" href="nivo-slider/demo/style.css" type="text/css" media="screen" /> -->
	<!--END OF LINKS FOR jQuery SLIDER-->




	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link href="img/favicon.ico" rel="shortcut icon" />

    </head>

    <body>
	<%@include file="header.jsp" %> 
	<!-- topbar ends -->

	<div class="container-fluid">
	    <div class="row-fluid">

		<%@include file="main_menu.jsp" %>
		<!--main menu ends-->
		<div class="row-fluid">
		    <%@include file="left_menu.jsp" %>

		    <%@include file="no_script.jsp" %>

		    <!--whole content starts-->
		    <div id="content" class="span10" >


			<!--main-content admin starts-->
			<div class="row-fluid">
			    <div class="box span12">
				<div class="box-header well" data-original-title="">
				    <%@ page import="entities.User" %>
				    <h2><i><span class="icon-user"></span>&nbsp;</i><%= ((User)session.getAttribute("user")).getUserRole()%></h2>
				</div>
				<div class="box-content">
				    <ul class="breadcrumb">
					<li>
					    <span class="divider"><i>Current:</i> </span><a href="#"><%= ((User)session.getAttribute("user")).getUserRole()%></a>
					</li>
					<li>
					    <span class="divider">/</span><a href="#">Manage Products</a>
					</li>
					<li>
					    <span class="divider">/</span><a href="#">Move Product</a>
					</li>
				    </ul>
				    <div class="page-header">
					<h1>Move Product
					    <span class="my_back_button">
						<a class="back_link" href="manage_products.jsp">
						    <button class="btn btn-primary" >
							<span title=".icon32  .icon-white  .icon-arrowthick-w " class="icon icon-white icon-arrowthick-w">
							</span>
							<span>Back to "Manage Products"
							</span>
						    </button>
						</a>
					    </span>
					</h1>
				    </div>     
				    <!-- <div class="row-fluid ">       -->	
				    <form class="form-horizontal">
					<% String prod_sn;
					    if(request.getParameter("prod_sn") == null)
						prod_sn= (String) request.getAttribute("prod_sn");
					    else
						prod_sn= request.getParameter("prod_sn");
					    %>
					<input type="hidden" name="prod_sn" value="<%=prod_sn%>" />
					<%@ page import="entities.Product" %>
					<%@ page import="DBcomm.ProdComm" %>
					<% Product p = ProdComm.getProducts(prod_sn).get(0);%>
					<!--fieldset for personal information--> 
					<fieldset style="float:left;" style="margin-left:0px;">
					    <legend class=" my_legend">Summary Information</legend>
					    <!--Name field-->
					    <div class="control-group">
						<label class="control-label" for="focusedInput">Name</label>
						<div class="controls">
						    <input id="focusedInput" class="input-xlarge focused" type="text" name="name" value="<%=p.getName()%>" disabled="disabled" />
						</div>
					    </div>

					    <div class="control-group">
						<label class="control-label" for="focusedInput">Serial Number</label>
						<div class="controls">
						    <input id="focusedInput" class="input-xlarge focused" type="text" value="<%=p.getSerialN()%>" disabled="disabled"/>
						</div>
					    </div>

					    <!--Surname field-->
					    <div class="control-group">
						<label class="control-label" for="focusedInput">Description</label>
						<div class="controls">
						    <input id="focusedInput" class="input-xlarge focused" type="text" value="<%=p.getDescr()%>" disabled="disabled" />
						</div>
					    </div>
					</fieldset>
				    </form>	

				    <div class="span6" id="my_vertical_align_box" style="margin-top:5%; margin-left:4%;">
					<div>
					    <p style="font-weight: bold; font-size: 18px; color: ThreeDDarkShadow;">Move Product from Warehouse:</p>         
					</div>
				    </div><!--/span-->


				    <div class="span6" style=" margin-top: 10px;width:55%;">
					<form class="form-horizontal" id="move_product_form" action="prod_move" method="post" >
					    <input type="hidden" name="prod_sn" value="<%=prod_sn%>"
					    <!--fieldset for personal information--> 
					    <fieldset style="float:left;">
						<div class="control-group">
						    <div class="controls">
							<select  data-rel="chosen" id="select_from_wh" name="wh_sel1">
							    <% if( request.getAttribute("prod_sn") == null){%>
								<option disabled="disabled" selected> <span style="color: #FF0066;">none</span></option>
							    <%}%>
							     <% if( request.getAttribute("prod_sn") != null){%>
								<option readonly="readonly" selected value="<%=request.getAttribute("wh_name")%>"> <span style="color: #FF0066;"><%=request.getAttribute("wh_name")%></span></option>
							    <%}%>
							    <%@ page import="entities.Warehouse" %>
							    <%@ page import="DBcomm.WhComm" %>
							    <%@ page import="entities.Warehouse" %>
							    <%@ page import="DBcomm.Pr_H_WhComm" %>
							    <% 
								for (Warehouse h : Pr_H_WhComm.getWh(prod_sn)) {
								    out.println("<option value=" + h.getName() + ">" + h.getName() + "</option>");
								   
								}%>
								<option value="all"> <span style="color: #FF0066;">all</span></option>

							</select>
						    </div>
						</div>
						<div class="span6" style="margin-top:0px; margin-left: 50%;">
						    <div>
							<p style="font-weight: bold; font-size: 18px; color: ThreeDDarkShadow; vertical-align: central;">to Warehouse:</p>         
						    </div>
						</div><!--/span-->
						<div class="control-group">
						    <div class="controls">
							<% if( request.getAttribute("prod_sn") != null){%>
							    <select id="selectRole" data-rel="chosen" name="wh_sel2" >
							<%}%>
							<%if( request.getAttribute("prod_sn") == null){%>
							    <select id="selectRole" data-rel="chosen" name="wh_sel2" disabled="disabled">
							<%}%>
							    <option value="none" disabled="disabled" selected> <span style="color: #FF0066;">none</span></option>
							    <% for (Warehouse w : WhComm.getWh(null)) {
								if(w.isIsOpen())    
								out.println("<option value=" + w.getName() + ">" + w.getName() + "</option>");
								}
							    %>
							</select>
						    </div>
						</div>
						<div class="control-group">
						    <div class="span6" style="margin-top:0px; margin-left:47%;">
							<div>
							    <p style="font-weight: bold; font-size: 18px; color: ThreeDDarkShadow;">Amount to Transfer:</p>         
							</div>
						    </div><!--/span-->
						    <div class="controls">
							<% if( request.getAttribute("prod_sn") != null){%>
							    <input id="amount" class="input-large focused" type="text" name="amount" placeholder="maximum value: <%=request.getAttribute("amount")%>"/>
							<%}%>
							<% if( request.getAttribute("prod_sn") == null){%>
							    <input id="amount" class="input-large focused" type="text" disabled="disabled"/>
							<%}%>
							<div>
							    <span id="amountspan"></span>
							</div>
						    </div>
						</div>
						<div style="padding-top:10px; padding-bottom:10px; margin-left:40%;">
						    <button class="btn btn-large btn-info"  type="submit">Move Selected Amount</button>
						</div>
					    </fieldset>
					</form>	
				    </div><!--/span-->
				    <!--</div> -->    <!--/row -->   
				</div> <!--box-content ends-->
			    </div> <!--box span12 ends-->
			</div> <!--gia row-fluid ends-->
			<!--main-content admin ends-->
		    </div>
		    <!--whole content ends (#content.span10)-->
		</div> 
		<!-- row-fluid gia left menu kai content ends-->
	    </div>
	    <!--row-fluid-->
	    <hr />
	       <%@include file="footer.jsp" %>

	</div>
	<!--container-fluid ends-->




	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->


	<script src="nivo-slider/jquery.nivo.slider.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $(window).load(function() {
		$('#slider').nivoSlider();
	    });
	</script>

	<script src="js/validate_product_amount.js"></script>

	<script src="js/ask_confirmation_action.js" type="text/javascript"></script>


	<script src="js/change_role_form.js" type="text/javascript"></script>

	<script src="js/submit_warehouse.js" type="text/javascript"></script>

	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>

	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src="js/fullcalendar.min.js"></script>
	<!-- data table plugin -->
	<script src="js/jquery.dataTables.min.js"></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>





    </body>
</html>