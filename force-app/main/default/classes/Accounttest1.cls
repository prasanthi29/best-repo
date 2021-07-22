@IsTest

Private class Accounttest1 {

Static testMethod Void testpost()
	{
    RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();      
    req.requestURI='/services/apexrest/Accounttest1/';
    req.httpMethod='post';
    RestContext.request=req;
    RestContext.response=res;
    
     String acctId = rest.dopost('Ravi', 'Testing');
    Account acct=[select id,name,Description from account where Id =:acctId];
    system.assertEquals(acct.Name, 'Ravi');
    system.assertEquals(acct.Description, 'Testing');
    
}

}