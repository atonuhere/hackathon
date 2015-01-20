<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="styles/js/jit.js"></script>
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
</style>
<body onload="init()">

    <section class="intro1">
		<div class="intro-body1">
			<div class="container">
				<div class="container transparent">
					<div class="col-md-12">
						<h3>Select Stand</h3>
						
						<div id="stadium_canvas" class="col-md-8" style="min-height:650px;"></div>    
						
						<div  class="col-md-4">
							<div class="thumbnail text-black" >	
								<form role="form" action="bookSeat" method="get">
									<div class="form-group" style="margin-left:5px !important">
										<table>
											<tr>
												<td>Select Stand : 
													<div id="inner-details"></div>
												</td>
												
											</tr>
															
										
										</table>
									</div>
									<input type="hidden" name="stadiumId" value="${stadiumId}">
									<input type="hidden" name="scheduleId" value="${scheduleId}">
									<input type="hidden" name="standId" value="" id="standId">
									<button type="submit" class="btn btn-default">Submit</button>
								</form>

							</div>
						</div>

					</div>
				</div>	
			</div>	
		</div>	
	</section>
<script>
function addChildren(object){
	var objectStad={ 
			children: object.child ,
			data: object.data ,
			id: object.id,
			name : object.name
		}
	return objectStad;
}

var json = {
	    "children": [
	       
	       {
	         "children": [
	           {
	             "children": [], 
	             "data": {
	               "description": "Scaling done right :)", 
	               "$angularWidth": 14952, 
	               "days": 3, 
	               "$color": "#B2ABF4", 
	               "size": 14952
	             }, 
	             "id": "Source/Core/I-Stand", 
	             "name": "I-Stand"
	           }, 
	           
	         ], 
	         "data": {
	           "description": "Animated TreeMaps", 
	           "$color": "#B2ABF4", 
	           "days": 3, 
	           "$angularWidth": 1000, 
	           "size": 35549
	         }, 
	         "id": "Source/Core", 
	         "name": "Core"
	       }, 
	        
	       {
	         "children": [
	           {
	             "children": [], 
	             "data": {
	               "description": "Fixed passing of general Label object", 
	               "$angularWidth": 8079, 
	               "days": 26, 
	               "$color": "#FF0000", 
	               "size": 8079
	             }, 
	             "id": "Source/Loader/L-Stand", 
	             "name": "L-Stand"
	           }
	         ], 
	         "data": {
	           "description": "Fixed passing of general Label object", 
	           "$color": "#E0C7C0", 
	           "days": 26, 
	           "$angularWidth": 1000, 
	           "size": 8079
	         }, 
	         "id": "Source/Loader", 
	         "name": "Loader"
	       }, 
	       {
		         "children": [
		           {
			         "children": [
			           {
			             "children": [], 
			             "data": {
			               "description": "Added new Canvas class with zoom/pan options", 
			               "$angularWidth": 23448, 
			               "days": 5, 
			               "$color": "#F5364C", 
			               "size": 23448
			             }, 
			             "id": "Source/J-Stand/Hypertree.js", 
			             "name": "J-Stand"
			           }, 
			           {
			             "children": [], 
			             "data": {
			               "description": "Add an option to resize labels according to its pie slice", 
			               "$angularWidth": 10762, 
			               "days": 1, 
			               "$color": "#AEA9F8", 
			               "size": 10762
			             }, 
			             "id": "Source/K-stand/PieChart.js", 
			             "name": "K-stand"
			           }, 
			           {
			             "children": [], 
			             "data": {
			               "description": "Added new Canvas class with zoom/pan options", 
			               "$angularWidth": 18010, 
			               "days": 5, 
			               "$color": "#B6AEEF", 
			               "size": 18010
			             }, 
			             "id": "Source/K-stand/RGraph.js", 
			             "name": "K-stand"
			           }, 
			           {
			             "children": [], 
			             "data": {
			               "description": "Animated TreeMaps", 
			               "$angularWidth": 52895, 
			               "days": 3, 
			               "$color": "#B2ABF4", 
			               "size": 52895
			             }, 
			             "id": "3", 
			             "name": "L-stand"
			           }, 
			           
			         ], 
		         "data": {
		           "description": "Merge remote branch 'woot/bugfixes_docnet' into sunburst_fixes", 
		           "$color": "#FFCC66", 
		           "days": 1, 
		           "$angularWidth": 1000, 
		           "size": 186221
		         }, 
		         "id": "2", 
		         "name": "G-Stand"
		       }],
		      	 "data": {
		           "description": "Merge remote branch 'woot/bugfixes_docnet' into sunburst_fixes", 
		           "$color": "#33CCFF", 
		           "days": 1, 
		           "$angularWidth": 1000, 
		           "size": 186221
		         }, 
		         "id": "1", 
		         "name": "C-Stand"
		           
	       }         
	     ], 
	     "data": {
	       "$type": "none"
	     }, 
	     "id": "Source", 
	     "name": "Source"
	   };


</script>
<script src="styles/js/stadium.js"></script>
</body>		