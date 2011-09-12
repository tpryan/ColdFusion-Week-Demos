component{
	this.name = "DemoApplication";
	this.sessionManagement = true;

	public function onApplicationStart(){
		application.title = "Demo Application";
		application.started = now();	
	}
	
	public function onSessionStart(){
		session.username = "";
		session.loggedin = false;
		session.started = now();		
	}
	
	public function onRequestStart(){
		if (!session.loggedin && !FindNoCase("/login.cfm", cgi.script_name)){
			location("login.cfm",false);
		}
		request.started = now();			
	}	
}