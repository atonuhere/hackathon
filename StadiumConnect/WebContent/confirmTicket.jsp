<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	#map-canvas {
        height: 300px;
        width: 80%;
        margin: 0px;
        padding: 0px;
      }
</style>	
    <!-- Intro Header -->
	
    <section class="intro1">
		<div class="intro-body1">
			<div class="container">
				<div class="well well-small transparent">
					<div id="parkingLotDivId" style="background:transparent; background-color:rgba(0, 0, 0, 0.5); height:500px; color:white; text-align:center; padding-top:15px;color:white !important;">
						<h3>Ticket Summary</h3>	

						<div class="ticket " style="color:#000000;margin-left:50px;" id="printdiv">
							
							<div class="col-md-12" style="color:white;  padding-top:70px; font-size:x-large; font-weight:bold">The Hackosaurus e-Ticket</div>
							<div class="col-md-6"></div>
							<div class="col-md-6 " style="color:white; ">
								<c:choose>
									<c:when test="${fn:length(tickets) gt 0}" >
										<c:forEach items="${tickets}" var="ticket" >
											<table class="table" style="margin-top:20px;text-align:left;width:90%">
												<tbody>
													
													<tr>
														<td>Ticket No.</td>
														<td>${ticket.ticketNum}</td>
													</tr>
													<tr>
														<td>Name</td>
														<td>${ticket.customerName}</td>
													</tr>
													<tr>
														<td>Block </td>
														<td>${ticket.stand} ${ticket.seat}</td>
													</tr>
													
												</tbody>
											</table>
								</c:forEach>
									</c:when>
									<c:otherwise>
										<table class="table" style="margin-top:20px;text-align:left;width:90%">
												<tbody>
													
													<tr>
														<td>Ticket No.</td>
														<td>TC-00035682</td>
													</tr>
													<tr>
														<td>Name</td>
														<td>ABC</td>
													</tr>
													<tr>
														<td>Block </td>
														<td>C-Stand S5</td>
													</tr>
													
												</tbody>
											</table>
									</c:otherwise>
								</c:choose>
								
							</div>
							
						</div>
				
					</div>
				</div>	
			</div>	
		</div>	
	</section>
	
