<cfset rc.title = "Episode One" />

<div class="container">
	<div class="row title">
	    <div class="span12">
	        <cfoutput><h2>#rc.title#</h2></cfoutput>
	    </div>
	</div>
	<div class="row">
		<div class="span12">
			<p>
				<div id="jukebox">
					<div class="info">Please wait...</div>
					<div class="loader">
						<div class="load-progress">
							<div class="play-progress">
							</div>
						</div>
					</div>
					<div class="controls">
						<a class="prev" href="#"><span>Prev</span></a>
						<a class="play" href="#"><span>Play</span></a>
						<a class="pause" href="#"><span>Pause</span></a>
						<a class="next" href="#"><span>Next</span></a>
					</div>
					<audio class="aud">
						<p>Oops, looks like your browser doesn't support HTML 5 audio.</p>
					</audio>
				</div>
			</p>
		</div>
	</div>
</div>


<script type="text/javascript">

	var playlist = [
		{
			url : "/_src/podcasts/noSchema-001.ogg",
			title : "Episode One"
		}
	];
	$(function(){
		
	    var aud = $('#jukebox .aud').get(0);
	    aud.pos = -1;
	
		$('#jukebox .play').bind('click', function(evt) {
			evt.preventDefault();
			if (aud.pos < 0) {
				$('#jukebox .next').trigger('click');
			} else {
				aud.play();
			}
		});
		
		$('#jukebox .pause').bind('click', function(evt) {
			evt.preventDefault();
			aud.pause();
		});
		
		$('#jukebox .next').bind('click', function(evt) {
			evt.preventDefault();
			aud.pause();
			aud.pos++;
			if (aud.pos == playlist.length) aud.pos = 0;
			aud.setAttribute('src', playlist[aud.pos].url);
                        $('#jukebox .info').html(playlist[aud.pos].title);
			aud.load();
		});
		
		$('#jukebox .prev').bind('click', function(evt) {
			evt.preventDefault();
			aud.pause();
			aud.pos--;
			if (aud.pos < 0) aud.pos = playlist.length - 1;
			aud.setAttribute('src', playlist[aud.pos].url);
                        $('#jukebox .info').html(playlist[aud.pos].title);
			aud.load();
		});
		
		// JQuery doesn't seem to like binding to these HTML 5
		// media events, but addEventListener does just fine
		
		aud.addEventListener('progress', function(evt) {
			var width = parseInt($('#jukebox').css('width'));
			var percentLoaded = Math.round(evt.loaded / evt.total * 100);
			var barWidth = Math.ceil(percentLoaded * (width / 100));
			$('#jukebox .load-progress').css( 'width', barWidth );
			
		});
		
		aud.addEventListener('timeupdate', function(evt) {
		    var width = parseInt($('#jukebox').css('width'));
			var percentPlayed = Math.round(aud.currentTime / aud.duration * 100);
			var barWidth = Math.ceil(percentPlayed * (width / 100));
			$('#jukebox .play-progress').css( 'width', barWidth);
		});
		
		aud.addEventListener('canplay', function(evt) {
			$('#jukebox .play').trigger('click');
		});
		
		aud.addEventListener('ended', function(evt) {
			$('#jukebox .next').trigger('click');
		});
		
	
		$('#jukebox .info').html(playlist[0].title);
	
	});
</script>