<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Navigation -->
  <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
      <div class="container">
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
		
		<div class="btn-group" >
		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
		Events & Tickets
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a tabindex="-1" href="#">Games & Sports Info</a></li>
			<li><a tabindex="-1" href="scheduleInfo">Schedule Info</a></li>
			<li><a tabindex="-1" href="#">Book Tickets</a></li>
		</ul>
		</div>
		
		<div class="btn-group">
		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
		Direction & Parking
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a tabindex="-1" href="parkingMap">Find Direction</a></li>
			<li><a tabindex="-1" href="parkingBooking">Parking Lot Booking</a></li>
		</ul>
		</div>
		<div class="btn-group">
		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
		Shop
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a tabindex="-1" href="hackFood">Food & Beverages</a></li>
			<li><a tabindex="-1" href="#">Merchandise</a></li>
		</ul>
		</div>
		
		<div class="btn-group">
		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
		Gallery
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a tabindex="-1" href="#">Videos</a></li>
			<li><a tabindex="-1" href="hackGallery">Photos</a></li>
		</ul>
		</div>
		
		<div class="btn-group">
		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
		Hospitality & Travel Services
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<li><a tabindex="-1" href="hotels">Our Hotel Partners</a></li>
			<li><a tabindex="-1" href="travels">Our Transport Partners</a></li>
		</ul>
		</div>
		 <c:choose>
			<c:when test="${not empty sessionScope.userSession }" >
				Welcome, ${sessionScope.userSession}
		    </c:when>
		     
		  </c:choose>          
          <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
  </nav>
  	 
 
