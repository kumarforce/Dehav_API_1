public  class AuthenticationServiceClass extends CallWebServiceClass{
	@TestVisible
	public HttpRequest getRequest(){
		String session1 = '';
		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://openreach--b2cuat.cs88.my.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9lcxCTdG2VbvCYDCY4QugHTIfYqFNuu0IK20DfbHJ28kMnzKRxl501m2tjDpsliEdtQg1jS9npDAk0tW0&client_secret=6D7D6CD6D4BF3E01DE75A12F382C24982BE1A3B47ED7B3BE1413B47382E92A35&username=sudeep.boodthula@openreach.co.uk.b2cuat&password=Pass1234$7O6GfdF92Ijm8mJ9xf8IH9rW');
		request.setMethod('POST');
		return   request;
	}
	
	@TestVisible
	public String  ProcessResponse(){ // add param for request type of 3
		String session1 = '';
		Http http = new Http();
		CallWebServiceClass cws = new CallWebServiceClass();
		HttpResponse  response = cws.callingService(this.getRequest());
		Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
		session1 = (String)results.get('access_token');
        System.debug('Response SessionId   = '+ session1);
		return   session1; 
	}
    
    // Add all the innner classes - Response and wrapper classes here and then process the contact creation here.
    // 
    // 
}