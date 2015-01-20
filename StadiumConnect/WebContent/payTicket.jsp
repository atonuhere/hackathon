
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
					<div id="parkingLotDivId" style="background:transparent; background-color:rgba(0, 0, 0, 0.5); height:500px; text-align:center; padding-top:15px;color:white !important;">
						<h3>Confirm Ticket</h3>											
						<div class="col-md-12">
							<table class="table table-condensed">
								<thead>
									<tr>
										<td>#</td>
										<td>Name</td>
										<td>Email</td>
										<td>Transaction No.</td>
										<td>No. of Tickets</td>
										<td>Ticket Price (&#8377;)</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>${customer.custName}</td>
										<td>${customer.custEmail}</td>
										<td>${transactionNum}</td>
										<td id="noOfTickets">${quantityList}</td>
										<td id="price" style="text-align:right">${price}</td>
									</tr>
									
									<tr>
										<td colspan="5" style="text-align:right; font-size:large">Total Amount Payable : </td>
										<td id="totalPriceId" style="text-align:right; font-size:large">${price}</td>
									</tr>
									
									
									
								</tbody>
							</table>
						
						</div>
						<form role="form" action="confirmTicket" method="post">
							<input type="hidden" name="bookingId" value="${bookingId}">
							 <input type="hidden" name="scheduleId" value="${scheduleId}">
							<button type="submit" class="btn btn-default" style="float:right; margin-right:20px;">Pay Now</button>
						</form>	
					</div>
				</div>	
			</div>	
		</div>	
	</section>
    
	
