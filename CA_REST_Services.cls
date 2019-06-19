@RestResource(urlMapping='/MEP/*')
global with sharing class CA_REST_Services {
    /*
    @HttpGet
    global static String getRecord() {
        // Add your code
        return '{ "Fields":[ { "ColumnName":"Firstname", "ColumnValue":"Dafydd","Comp":"=" },{"ColumnName":"Surname", "ColumnValue":"Elis-Thomas", "Comp":"=" } ]}';
    } 
    @HttpPOST
    global static String getSearchRecord() {
        // Add your code
         return '';
    }
    */
    
     @HttpGet
    global static String doGet() {
		String body1 = '';
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
		String CallMethod = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
		if(CallMethod == 'FetchSingleProfile' ){
			body1 = '{ ""IsSuccess"": true, ""Data"": null, ""Message"": ""Online""" }'; 
		}
		if(CallMethod == 'ExportCSVfile' ){
			body1 = '{ "IsSuccess": true, "Data": "https://www.dehavilland.co.uk/peoplepointapi/csv/download/948e3da1-aa39-4efb-b76c-74ad4ee238b5", "Message": null }';
		}
		if(CallMethod == 'ProfileImage' ){
			body1 = '{ "IsSuccess": true, "Data": "https://www.dehavilland.co.uk/peoplepointapi/csv/download/948e3da1-aa39-4efb-b76c-74ad4ee238b5", "Message": null }';
		}
		if(CallMethod == 'BiographicalEndpoint' ){
			body1 = '{ "IsSuccess": true, "Data": [ { "PeopleId": 192, "PolicyInterests": "Lord Bragg pursued a prominent career as a broadcaster, writer and novelist before being made a member of the House of Lords.He has been President of the National Campaign for the Arts, and has written and presented programmes on diverse subjects including globalisation, religion and the English language. He was also made a Fellow of the Royal Society in recognition of his work as a cultural champion of science.He was President of the National Academy of Writing, and Vice President of the Friends of the British Library, and has served as Chair of the Arts Council s Literature Panel.Among his many public roles, Melvyn Bragg has been Chancellor of Leeds University between 1999 and 2017, President of the National Campaign for the Arts and a Governor of the London School of Economics. Shortly after his resignation as Chancellor of Leeds University, he wrote a letter to the <i>Guardian</i> in which he suggested that the Governments decision to continue to include students in the official statistics for the number of immigrants could be because it suited  some disgraceful scaremongering tactic. He also warned that Government policy was deterring Chinese and Indian students.A prominent advocate of the arts, he has called for increased arts funding from the Government and greater interest in the arts from broadcasters.Lord Bragg has argued in favour of continued membership of the European Union, and has criticised the position taken by both Labour and the Conservative Party. In particular, he argued that the Labour Party has missed the chance to temper, alter and perhaps change completely what many of us think to be the biggest misjudgement in our peacetime history and argued that the arguments for Remain continued to outweigh those in favour of leaving the EU.", "CurrentAllPartyParilamentaryGroupAPPGMemberships":"no", "PartyPosts": "no", "ElectionToParliament": "no", "LifeBeforePariament": "Lord Bragg began his broadcasting career as a general trainee for the BBC in 1961, working at the World Service, the Third Programme and the Home Service.He next joined the production team of the arts strand <i>Monitor</i>, and presented the BBC s literature programme <i>Read All About It</i>.At London Weekend Television (LWT), Lord Bragg took on arguably his most famous role as editor and presenter of <i>The South Bank Show</i>. He also became Head of Arts at LWT in 1982, latterly assuming the role of Controller of Arts.Lord Bragg revived <i>The South Bank Show</i> on Sky Arts in 2012.He has also produced many successful programmes aired on BBC Radio 4, and has been a prolific author of screenplays, fiction and non-fiction. He was made Domus Fellow of St Catherines College, Oxford, in 1990.", "PersonalLife": "Lord Bragg was born on 6 October 1939 in Wigton, Cumbria, the son of a tailor and a mechanic. After attending the Nelson Thomlinson School in Wigton, he was educated at Wadham College, Oxford, where he read Modern History.He was first married in 1961, but lost his wife to suicide a decade later. The couple produced one daughter. He married again in 1973, and had two more children with his second wife, Catherine, an author and television producer.Formerly the President of mental health charity MIND, Lord Bragg has spoken openly about his past experiences of mental health difficulties.","Education": "Wadham College, Oxford (BA modern history 1961, MA)", "ProfessionalLife": "<li>Director, Directors Cut Productions 2010 - <li>Presenter, In Our Time, BBC Radio 4 1998 - <li>Chairman, MIND 1997 - 2011 <li>Controller of Arts, ITV 1990 - 2010 <li>President, National Campaign for the Arts 1985 - 2005 <li>Head of Arts, ITV 1982 - 1990 <li>Editor and Presenter, The South Bank Show, London Weekend Television 1978 - 2010 <li>Editor, Read All About It, BBC 1974 - 1977 <li>Chairman, Arts General Literature Panel 1970 - 1974 <li>Co-Director of Melvyn Bragg Limited (independent programme maker for BBC Radio, BBC TV and Sky Arts) 1965","PublicBodies": "<li> Chairman, MIND, 1997 - 2011 <li> President, National Campaign for the Arts, 1985 - 2005 <li> Chancellor, University of Leeds, 2000 -" } ], "Message": "ok""}';
		}
		if(CallMethod == 'ExportFullProfile' ){
			body1 = '{ "IsSuccess": true, "Data": "https://www.dehavilland.co.uk/peoplepointapi/csv/download/948e3da1-aa39-4efb-b76c-74ad4ee238b5", "Message": null }';
		}

        return body1;
    }
    
    @HttpPost
    global static String doPost() {
		String body1 = '';
		RestRequest req = RestContext.request;
		//String reqBody = req;
		//deserialize and get field to search
        String CallMethod = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
		if(CallMethod == 'SearchData' ){
			body1 = '{ ""IsSuccess"": true, ""Data"": null, ""Message"": ""Online""" }'; 
		}
		return  body1;
    }
	
	
    /* @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }
  */
  
   
   /*@HttpPost
    global static String doPost(String name, String phone, String website) {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }
	*/
}