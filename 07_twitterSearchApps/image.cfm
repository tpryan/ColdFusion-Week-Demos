<cf_searchform>

<cfif structKeyExists(form, "q") AND len(form.q) gt 0>
	<cfset twitterResults = new Twitter().search(form.q) />
	
	<cfscript>
		outputImage = ImageNew("",192,192,"rgb");
		overLayImage = ImageNew("",192,192,"rgb");
		
		for (i=1;i <= twitterResults.recordCount; i++){
			imageName = getToken(twitterResults.linkhref[i],2,',');
			remoteImage = ImageNew(imageName);
			
			imageSetDrawingColor(remoteImage,getColor(i));
			ImageSetDrawingTransparency(remoteImage,50);
			imageDrawRect(remoteImage,0,0,48,48,true);
			
			c = getCoordinates(i);
			imagePaste(outputImage, remoteImage, c.x, c.y);
			ImageSetDrawingTransparency(overLayImage,50);
			imageSetDrawingColor(overLayImage,getColor(i));
			imageDrawRect(overLayImage,c.x, c.y,48,48,true);
		}
		ImageSetDrawingTransparency(outputImage,50);
		imagePaste(outputImage, overLayImage, 0,0);
	</cfscript>	
	<cfimage action="writeToBrowser" source="#outputImage#" >
</cfif>

<cfscript>
	public struct function getCoordinates(required numeric position){
		var result = arrayNew(1);
		arrayAppend(result, {"x"=0,"y"=0});
		arrayAppend(result, {"x"=48,"y"=0});
		arrayAppend(result, {"x"=96,"y"=0});
		arrayAppend(result, {"x"=144,"y"=0});
		arrayAppend(result, {"x"=0,"y"=48});
		arrayAppend(result, {"x"=48,"y"=48});
		arrayAppend(result, {"x"=96,"y"=48});
		arrayAppend(result, {"x"=144,"y"=48});
		arrayAppend(result, {"x"=0,"y"=96});
		arrayAppend(result, {"x"=48,"y"=96});
		arrayAppend(result, {"x"=96,"y"=96});
		arrayAppend(result, {"x"=144,"y"=96});
		arrayAppend(result, {"x"=0,"y"=144});
		arrayAppend(result, {"x"=48,"y"=144});
		arrayAppend(result, {"x"=96,"y"=144});
		arrayAppend(result, {"x"=144,"y"=144});
		
		return result[arguments.position];
	}
	
	public string function getColor(required numeric position){
		var result = arrayNew(1);
		arrayAppend(result, "ff0000");
		arrayAppend(result, "00ff00");
		arrayAppend(result, "0000ff");
		arrayAppend(result, "ff00ff");
		arrayAppend(result, "00ffff");
		arrayAppend(result, "ff0000");
		arrayAppend(result, "00ff00");
		arrayAppend(result, "0000ff");
		arrayAppend(result, "ff00ff");
		arrayAppend(result, "00ffff");
		arrayAppend(result, "ff0000");
		arrayAppend(result, "00ff00");
		arrayAppend(result, "0000ff");
		arrayAppend(result, "ff00ff");
		arrayAppend(result, "00ffff");
		arrayAppend(result, "ff0000");
		arrayAppend(result, "00ff00");
		arrayAppend(result, "0000ff");
		arrayAppend(result, "ff00ff");
		arrayAppend(result, "00ffff");
		return result[arguments.position];
	}
</cfscript>	