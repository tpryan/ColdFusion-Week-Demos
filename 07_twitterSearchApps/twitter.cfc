component{

	variables.twitterurl = "http://search.twitter.com/search.atom?q=";

	public query function search(required string q){
		var feed = new feed();
		var result = feed.read(source=variables.twitterurl & arguments.q & "&rpp=16");
		return result.query;
	}
	
	
	public query function geoSearch(required string q){
		var feed = new feed();
		var http = new http();
		var i = 0;
		
		var twitterurl = "http://search.twitter.com/search.json?q=";
		var urlToCall = twitterurl & arguments.q & "&geocode=37.781157,-122.398720,6000mi";	
		var rawfeed = http.send(url=urlToCall).getPrefix().fileContent;
		var sc = deserializeJson(rawfeed);
		var results = QueryNew('username,profileImage,location,content');
		for (i=1;i<=arrayLen(sc.results);i++){
			queryAddRow(results);
			querySetCell(results,"username",sc.results[i].from_user);
			querySetCell(results,"profileImage",sc.results[i].profile_image_url);
			querySetCell(results,"location",sc.results[i].location);
			querySetCell(results,"content",sc.results[i].text);
		}	
		
		return results;
	}
	
}