component{

	public struct function geocode(required string place){
		var result = {"lat"= 0 , "lon"=0};
		var baseURL = "http://maps.googleapis.com/maps/api/geocode/json";
		var fullURL = baseUrl & "?sensor=false&address=" & arguments.place;
		var http = new http();	
		var rawfeed = http.send(url=fullURL).getPrefix().fileContent;
		var sc = deserializeJson(rawfeed);
		
		try {
		    result = {"lat"= sc.results[1].geometry.location.lat , "lon"=sc.results[1].geometry.location.lng};
		}
		catch(Any e) {
		}

		
		return result;
		
		
	}	




}