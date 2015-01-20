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
						<h3>IMAGE GALLERY</h3>
						
						<div class="col-md-12" style="align=center">
						
						<div id="myCarousel" class="carousel slide">
						  <!-- Dot Indicators -->
						  <ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
							<li data-target="#myCarousel" data-slide-to="4"></li>
							<li data-target="#myCarousel" data-slide-to="5"></li>
							<li data-target="#myCarousel" data-slide-to="6"></li>
							<li data-target="#myCarousel" data-slide-to="7"></li>
						  </ol>
						  <!-- Items -->
						  <div class="carousel-inner">
							<div class="active item"><img src="styles/img/stadium_img1.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/stadium_img2.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/stadium_img3.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/stadium_img4.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/stadium_img5.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/atletico.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/chennei_fc.jpg" alt="" style="width:100%; height:500px;"/></div>
							<div class="item"><img src="styles/img/olympic.jpg" alt="" style="width:100%; height:500px;"/></div>
							
						  </div>
						  <!-- Navigation -->
						  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
						  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
						</div>

						</div>
					</div>
				</div>	
			</div>	
		</div>	
	</section>
	
