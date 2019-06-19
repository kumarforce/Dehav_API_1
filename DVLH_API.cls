public with sharing class DVLH_API{

	Public Boolean ApiStatus{get;set;}
	public Boolean auhenticated{get;set;}
    Public String API_SessionId {
        get {
            if(this.API_SessionId =='' || this.API_SessionId == null ) return callAuthentication();
            else return  API_SessionId;
    	}
        set;} 
	
	@TestVisible
	public void CallPeoplePoint(){
		//System.debug('Hello CallPeoplePoint '+this.API_SessionId);
        PeoplePointServiceClass pp = new PeoplePointServiceClass();
        System.debug('Hello CallPeoplePoint '+pp.ProcessResponse(API_SessionId));
	}
	@TestVisible
	public void CallLocalCouncillor (){
		//System.debug('Hello CallLocalCouncillor '+this.API_SessionId);
        LocalCouncilServiceClass lc = new LocalCouncilServiceClass();
        System.debug('Hello CallLocalCouncillor '+lc.ProcessResponse(API_SessionId));
	}
    
	@TestVisible
	public void CallBiographicalData(){
	    //System.debug('Hello CallBiographicalData '+this.API_SessionId);
        BioServiceClass bs = new BioServiceClass();
        System.debug('Hello CallBiographicalData '+bs.ProcessResponse(API_SessionId));
        
	}
	
	@TestVisible
	public String  callAuthentication(){
        AuthenticationServiceClass a = new AuthenticationServiceClass();
        API_SessionId = a.ProcessResponse();
        return API_SessionId;
         
	}
}