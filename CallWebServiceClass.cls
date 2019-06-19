public virtual  class CallWebServiceClass{
	@TestVisible
	public HTTPResponse callingService(HttpRequest req){
		Http http = new Http();
		HttpResponse response = http.send(req);
		if(response.getStatusCode() == 200) {
			//Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
			
		}
		else{
			//Insert log record of Authentication failure
			
		}
        System.debug('Response   = '+ response);
		return   response;
	}
	 
}