
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
    <section class="intro1">
		<div class="intro-body1">
			<div class="container">
				<div class="well well-small transparent">
					<div id="map-canvas" >
			
					</div>
				</div>	
			</div>	
		</div>	
	</section>
<script src="//maps.google.com/maps/api/js?sensor=true"></script>   
<script src="styles/js/map.js"></script>
	
