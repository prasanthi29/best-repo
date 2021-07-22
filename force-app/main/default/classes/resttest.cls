@IsTest
public class resttest {

Static testMethod Void testpost()
	{
    RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();      
    req.requestURI='/services/apexrest/rest/';
    req.httpMethod='post';
    RestContext.request=req;
    RestContext.response=res;
     String acctId = rest.dopost('Ravi1234', 'Testing');
    Account acct=[select id,name,Description from account where Id =:acctId];
    system.assertEquals(acct.Name, 'Ravi1234');
    system.assertEquals(acct.Description, 'Testing');
    
}

}