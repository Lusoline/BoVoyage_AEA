$(function() {

	var marker = [], infowindow = [], map;

    var stylesArray = {
        'style-1' : {
            'style': [{"elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"color":"#f5f5f2"},{"visibility":"on"}]},{"featureType":"administrative","stylers":[{"visibility":"off"}]},{"featureType":"transit","stylers":[{"visibility":"off"}]},{"featureType":"poi.attraction","stylers":[{"visibility":"off"}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"color":"#ffffff"},{"visibility":"on"}]},{"featureType":"poi.business","stylers":[{"visibility":"off"}]},{"featureType":"poi.medical","stylers":[{"visibility":"off"}]},{"featureType":"poi.place_of_worship","stylers":[{"visibility":"off"}]},{"featureType":"poi.school","stylers":[{"visibility":"off"}]},{"featureType":"poi.sports_complex","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#ffffff"},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"visibility":"simplified"},{"color":"#ffffff"}]},{"featureType":"road.highway","elementType":"labels.icon","stylers":[{"color":"#ffffff"},{"visibility":"off"}]},{"featureType":"road.highway","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","stylers":[{"color":"#ffffff"}]},{"featureType":"poi.park","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"water","stylers":[{"color":"#71c8d4"}]},{"featureType":"landscape","stylers":[{"color":"#e5e8e7"}]},{"featureType":"poi.park","stylers":[{"color":"#8ba129"}]},{"featureType":"road","stylers":[{"color":"#ffffff"}]},{"featureType":"poi.sports_complex","elementType":"geometry","stylers":[{"color":"#c7c7c7"},{"visibility":"off"}]},{"featureType":"water","stylers":[{"color":"#a0d3d3"}]},{"featureType":"poi.park","stylers":[{"color":"#91b65d"}]},{"featureType":"poi.park","stylers":[{"gamma":1.51}]},{"featureType":"road.local","stylers":[{"visibility":"off"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"poi.government","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"landscape","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"road.local","stylers":[{"visibility":"simplified"}]},{"featureType":"road"},{"featureType":"road"},{},{"featureType":"road.highway"}],
            'marker' : 'img/travel/marker.png'}
    };


	function addMarker(location,name,contentstr){
        marker[name] = new google.maps.Marker({
            position: location,
            map: map,
			icon: stylesArray[$('#map-canvas').attr("data-style")]['marker']
        });
        marker[name].setMap(map);
		
		infowindow[name] = new google.maps.InfoWindow({
			content:contentstr
		});
		
		google.maps.event.addListener(marker[name], 'click', function() {
			infowindow[name].open(map,marker[name]);
		});
    }
	
	function initialize() {

		var lat = $('#map-canvas').attr("data-lat");
		var lng = $('#map-canvas').attr("data-lng");

		var myLatlng = new google.maps.LatLng(lat,lng);

		var setZoom = parseInt($('#map-canvas').attr("data-zoom"));

		var styles = stylesArray[$('#map-canvas').attr("data-style")]['style'];
		var styledMap = new google.maps.StyledMapType(styles,{name: "Styled Map"});

		var mapOptions = {
			zoom: setZoom,
            scrollwheel: false,
			panControl: false,
			panControlOptions: {
				position: google.maps.ControlPosition.LEFT_BOTTOM
			},
			zoomControl: false,
			zoomControlOptions: {
				style: google.maps.ZoomControlStyle.LARGE,
				position: google.maps.ControlPosition.LEFT_BOTTOM
			},
			streetViewControl: true,
			streetViewControlOptions: {
				position: google.maps.ControlPosition.LEFT_BOTTOM
			},
			
			center: myLatlng,
			mapTypeControlOptions: {
			  mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
			},
            disableDefaultUI :true,
            streetViewControl: false

		
		};
		map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
		
		map.mapTypes.set('map_style', styledMap);
  		map.setMapTypeId('map_style');
		

		$('.addresses-block a').each(function(){
			var mark_lat = $(this).attr('data-lat');
			var mark_lng = $(this).attr('data-lng');
			var this_index = $('.addresses-block a').index(this);
			var mark_name = 'template_marker_'+this_index;
			var mark_locat = new google.maps.LatLng(mark_lat, mark_lng);
			var mark_str = $(this).attr('data-string');
			addMarker(mark_locat,mark_name,mark_str);	
		});
		
	}

	$(window).load(function(){
		setTimeout(function(){initialize();}, 500);
	});

});
