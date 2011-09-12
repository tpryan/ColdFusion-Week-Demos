component accessors="true"{
	property name="artistid";
	property name="firstname";
	property name="lastname";
	property name="address";
	property name="city";
	property name="state";
	property name="postalcode";
	property name="email";
	property name="fax";
	property name="phone";
	
	public function getFormattedAddress(){
		var result = getAddress() & "<br />" & getState() & ", " & getCity() & " " & getPostalCode();	
		return result;
	}
	
	public function getFormattedPhone(){
		var result = "(" & Replace(getPhone(), "-", ") ", "one");	
		return result;
	}
	
	public function getFullName(){
		var result = getFirstname() & " " & getLastName();	
		return result;
	}		

}