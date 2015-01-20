<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

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
										<td>Ticket No.</td>
										<td>No. of Tickets</td>
										<td>Ticket Price (&#8377;)</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>John</td>
										<td>johncarter@mail.com</td>
										<td>S1, S2, S3, S4, S5</td>
										<td id="noOfTickets">5</td>
										<td id="price" style="text-align:right">1500.00</td>
									</tr>
									
									<tr>
										<td colspan="5" style="text-align:right; font-size:large">Total Amount Payable : </td>
										<td id="totalPriceId" style="text-align:right; font-size:large"></td>
									</tr>
									
									
									
								</tbody>
							</table>
						
						</div>
						<s:form action="generateTicket" method="post">
							<s:hidden name="bookingId" value="%{bookingId}" />
							<s:hidden name="transactionNum" value="%{transactionNum}" />
							<s:hidden name="seatNums" value="%{confirmedSeats}" />
							<s:hidden name="totalPrice" value="%{totalPrice}" />
							
							<button type="submit" class="btn btn-default" style="float:right; margin-right:20px;">Confirm</button>
						</s:form>	
					</div>
				</div>	
			</div>	
		</div>	
	</section>
