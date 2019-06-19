public  class BioServiceClass extends CallWebServiceClass{

	@TestVisible
	public HttpRequest getRequest(String session1){
		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://openreach--b2cuat.cs88.my.salesforce.com/services/apexrest/MEP/BiographicalEndpoint');
		//ExportCSVfile ,  BiographicalEndpoint , FetchSingleProfile
		String auth = 'OAuth '+Session1;
		request.setHeader('Content-Type', 'text/xml'); 
		request.setHeader('Authorization', auth); 
		request.setMethod('GET');
		return   request;
	}
	
	 
	
	@TestVisible
	public String  ProcessResponse(String session){
		Http http = new Http();
		CallWebServiceClass cws = new CallWebServiceClass();
		HttpResponse  response = cws.callingService(this.getRequest(session));
		System.debug(' length  = '+ response.getBody().length());
		return    response.getBody(); 
	}
}