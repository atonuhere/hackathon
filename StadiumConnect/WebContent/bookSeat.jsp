<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
		.container-top {
			margin-top: 80px;
		}
		.transparent {
			border-width: 0px;
			-webkit-box-shadow: 0px 0px;
			box-shadow: 0px 0px;
			background-color: rgba(0,0,0,0.0);
			background-image: -webkit-gradient(linear, 50.00% 0.00%, 50.00% 100.00%, color-stop( 0% , rgba(0,0,0,0.00)),color-stop( 100% , rgba(0,0,0,0.00)));
			background-image: -webkit-linear-gradient(270deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
			background-image: linear-gradient(180deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
			background:transparent;
			margin-top:75px;
		}
		
		td {
			margin: 0 0 25px;
			text-transform: uppercase;
			font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
			font-weight: 300;
			letter-spacing: 1px;
			width:50%;
			height:30px;
		}
		
		.content {
			float: left;
			font-size: 11px;
			margin: 5px;
			padding: 5px;
		}

		.utility {
			-moz-border-radius: 5px;
			-webkit-border-radius: 5px;
			background: red;
			border-radius: 5px;
			clear: left;
			cursor:pointer;
			float: left;
			font-size: 11px;
			height: auto;
			margin: 5px;
			padding: 5px;
			width: 80px;
		}

		.box_occupied {
			-moz-border-radius: 5px;
			-webkit-border-radius: 5px;
			background: #FF0505;
			border-radius: 5px;
			cursor:pointer;
			float: left;
			font-size: 11px;
			height: 50px;
			margin: 5px;
			padding: 5px;
			width: 150px;
		}
		
		.box_available {
			-moz-border-radius: 5px;
			-webkit-border-radius: 5px;
			background: #95FC83;
			border-radius: 5px;
			cursor:pointer;
			float: left;
			font-size: 11px;
			height: 50px;
			margin: 5px;
			padding: 5px;
			width: 150px;
			opacity:0.7;
			color: #000000;
			font-weight: bold;
			font-size: large;
		}
	</style>
	
	<section class="intro1">
		<div class="intro-body1">
			<div class="container">
				<div class="well well-small transparent">
					<div id="parkingLotDivId" style="background:transparent; background-color:rgba(0, 0, 0, 0.5); height:500px; text-align:center; padding-top:15px;color:white !important;">
						<h3>Choose Your Seats</h3>
						<form role="form" action="payTicket" method="post">
							 <input type="hidden" name="scheduleId" value="${scheduleId}">
							 <input type="hidden" name="standId" value="${standId}">
							 <input type="hidden" name="totalPrice" id="totalPrice" value="${standPrice}">
							 						 
							<div id="content">
								<div class="section" style="padding-left:150px !important;">
									   <c:forEach items="${stadiumSeats}" var="seat">
										   <c:choose>
										   		<c:when test="${seat.seatAvailable eq true }" >
												   	<div class="box_available">
													 <input type="checkbox" name="seatIds" value="${seat.seatId}" >&nbsp;&nbsp;${seat.seatName}
													</div>
												 </c:when>
												<c:otherwise>
													<div class="box_occupied">
													 ${seat.seatName}
													</div>
												</c:otherwise>  
											</c:choose>	 
									   </c:forEach>
									   
								   
								</div>						  
							</div>
							
							 							 
							<div class="col-md-12">
								<button type="submit" class="btn btn-default" >Book Now</button>
							</div>
						</form>
					</div>
				</div>	
			</div>	
		</div>	
	</section>
	
<script>

</script>