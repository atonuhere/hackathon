<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="styles/js/fullcalendar.min.js"></script>
<link href="styles/css/fullcalendar.css" rel="stylesheet">
<link href="styles/css/fullcalendar.print.css" rel="stylesheet" media="print">

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
</style>	
    <section class="intro1">
		<div class="intro-body1">
			<div class="container">
				<div class="well well-small transparent">
					<div id="bootstrapModalFullCalendar" >
			
					</div>
				</div>	
			</div>	
		</div>	
	</section>
 
 
<script>
$(document).ready(function(){	
	var eventsArr=new Array();
	
	<c:forEach items="${scheduleList}" var="event" >
		var event={
				title: '${event.eventName} - ${event.stadiumName} (${event.eventcategory}) ',
				start: '${event.scheduleDate}',
				description: " ${event.stadiumName} , ${event.stadiumCity}",
				evurl : "bookEvent?scheduleId=${event.eventId}&stadiumId=${event.stadiumId}"
		};	
		eventsArr.push(event);
		
	</c:forEach>
	
	$('#bootstrapModalFullCalendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultDate: '2014-12-05',
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: eventsArr,	
		eventClick:  function(event, jsEvent, view) {
			$('#modalTitle').html(event.title);
			$('#modalBody').html(event.description);
			$('#eventUrl').attr('href',event.evurl);
			$('#stedoModal').modal();
		}
	});
});
</script>   
	
