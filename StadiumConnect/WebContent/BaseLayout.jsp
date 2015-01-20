<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	
	<link href="styles/css/bootstrap.min.css" rel="stylesheet">
	<link href="styles/css/grayscale.css" rel="stylesheet">
	<link href="styles/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
	
	<script src="styles/js/moment.min.js"></script>
	<script src="styles/js/jquery.min.js"></script>
	<script src="styles/js/bootstrap.min.js"></script>
	<script src="styles/js/jquery.easing.min.js"></script>
	<script src="styles/js/grayscale.js"></script>
	
	<script>
	
	function GetCurrentPageName() { 
		var PageURL = document.location.href; 
		var PageName = PageURL.substring(PageURL.lastIndexOf('/') + 1); 
	
		return PageName.toLowerCase() ;
	}
	
	$(document).ready(function(){	
		var CurrPage = GetCurrentPageName();
		console.log(CurrPage);
		
		switch(CurrPage){
			case 'home':
		  		$('#li_home').addClass('active') ;
		  		break;
			case 'allmovies':
				$('#li_allmovies').addClass('active') ;
		  		break;
			case 'alltheatres':
		 		$('#li_alltheatres').addClass('active') ;
		  		break;
			case 'faq':
		 		$('#li_faq').addClass('active') ;
		  		break;
			case 'about':
		 		$('#li_about').addClass('active') ;
		  		break;
			case 'viewprofile':
		 		$('#li_account').addClass('active') ;
		  		break;
			case 'bookedhistory':
		 		$('#li_account').addClass('active') ;
		  		break;
			case 'changepassword':
		 		$('#li_account').addClass('active') ;
		  		break;
		}
	
	
		
		});
	</script>

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />

	<div id="stedoModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content text-black">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
					<h4 id="modalTitle" class="modal-title"></h4>
				</div>
				<div id="modalBody" class="modal-body"></div>
							
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<a id="eventUrl" target="_blank" class="btn btn-primary">Event Page</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>