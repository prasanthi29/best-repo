@RestResource(urlMapping='/Account/*')
global with sharing class sampleRest {
  
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        String memberId = req.requestURI.substring(req.requestURI.lastIndexOf('/') + 1);
        Account result = [SELECT Id, Name FROM Account WHERE Id = :memberId];
        return result;
    }
  
    @HttpPost
    global static String doPost(String name, String descrp) {
        Account a = new Account(Name = name, Description = descrp);        
        insert a;
        return a.Id;
    }

    @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        String memberId = req.requestURI.substring(req.requestURI.lastIndexOf('/') + 1);
        Account memb = [SELECT Id FROM Account WHERE Id = :memberId];
        delete memb;
    }
    
}