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
					<div id="parkingLotDivId" style="background:transparent; background-color:rgba(0, 0, 0, 0.5); height:400px; text-align:center; padding-top:15px;color:white !important;">
						<h5 style="text-align:left">Snacks</h5>
							<table class="table table-bordered" style="width:100%; font-size:x-small;align=center;">
							
								<thead>
									<tr>
										<td>#</td>
										<td>Name</td>
										<td>Price</td>
										<td>Quantity</td>			
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Samosa</td>
										<td>Rs. 10/pc
										</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">1</option>
										<option value"2">2</option>
										<option value"3">3</option>
										<option value"4">5</option>
										<option value"5">5</option>
										</select>
										</td>
									</tr>
									
									<tr>
										<td>2</td>
										<td>Pakoda</td>
										<td>Rs. 15/pc
										</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">1</option>
										<option value"2">2</option>
										<option value"3">3</option>
										<option value"4">5</option>
										<option value"5">5</option>
										</select>
										</td>
									</tr>									
								</tbody>
							</table>
							
							<h5 style="text-align:left">Meal</h5>
							<table class="table table-bordered" style="width:100%; font-size:x-small;align=center;">
							
								<thead>
									<tr>
										<td>#</td>
										<td>Name</td>
										<td>Price</td>
										<td>Quantity</td>
													
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Veg Combo</td>
										<td>Rs. 20/pc
										</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">1</option>
										<option value"2">2</option>
										<option value"3">3</option>
										<option value"4">5</option>
										<option value"5">5</option>
										</select>
										</td>
										</tr>
									
									<tr>
										<td>2</td>
										<td>Non-Veg Combo</td>
										<td>Rs. 50/pc
										</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">1</option>
										<option value"2">2</option>
										<option value"3">3</option>
										<option value"4">5</option>
										<option value"5">5</option>
										</select>
										</td>
										</tr>									
								</tbody>
							</table>
													<h5 style="text-align:left">Beverage</h5>
							<table class="table table-bordered" style="width:100%; font-size:x-small;align=center;">
							
								<thead>
									<tr>
										<td>#</td>
										<td>Name</td>
										<td>Price</td>
										<td>Quantity/Option</td>			
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Tea</td>
										<td>Rs. 12
										</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">1</option>
										<option value"2">2</option>
										<option value"3">3</option>
										<option value"4">5</option>
										<option value"5">5</option>
										</select>
										</td>
										</tr>
									
									<tr>
										<td>2</td>
										<td>Coffee</td>
										<td>Rs. 15</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">1</option>
										<option value"2">2</option>
										<option value"3">3</option>
										<option value"4">5</option>
										<option value"5">5</option>
										</select>
										</td>
										</tr>

									<tr>
										<td>2</td>
										<td>Cold Drink</td>
										<td>Rs. 15</td>
										<td style="cursor:pointer; text-decoration:underline">
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose ----]</option>
										<option value"1">7 Up</option>
										<option value"2">Sprite</option>
										<option value"3">Coke</option>
										<option value"3">Pepsi</option>
										</select>
										<select name="snacks" style="!important; background:transparent; background-color:rgba(0, 0, 0, 0.3); ">
										<option value"">[---Choose quantity----]</option>
										<option value"1">200 ml</option>
										<option value"2">500 ml</option>
										<option value"3">1.5 L</option>
										<option value"4">2 L</option>
										
										</select>
										</td>
										</tr>										
								</tbody>
							</table>
					</div>
				</div>	
			</div>	
		</div>	
	</section>
	
