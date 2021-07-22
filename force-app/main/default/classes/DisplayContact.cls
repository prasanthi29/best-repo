public with sharing class DisplayContact {
    public List<Contact> conList {get;set;}
    public List<Contact> conList1 {get;set;}
   // public String id {get; set;}
    public DisplayContact(ApexPages.StandardSetController controller) {
    // conList1 = [Select id,Name,Phone,Email from contact where accountId =: ApexPages.currentPage().getParameters().get('id')];
    }
   
    public PageReference ContactLists(string accid)
    {
    
    if(ApexPages.currentPage().getParameters().get('id') != null){
      conList = [Select id,Name,Phone,Email from contact where accountId =: ApexPages.currentPage().getParameters().get('id')];
      conList1 = [Select id,Name,Phone,Email from contact where accountId =: accid];
      }
     return null;
    } 
    
    public void ContactLists()
    {
    string aid = ApexPages.currentPage().getParameters().get('id');
    system.debug('Account'+aid);
   // system.debug('jacc'+accid);
     if(ApexPages.currentPage().getParameters().get('id') != null){
      conList = [Select id,Name,Phone,Email from contact where accountId =: ApexPages.currentPage().getParameters().get('id')];
      conList1 = [Select id,Name,Phone,Email from contact where accountId =: ApexPages.currentPage().getParameters().get('id')];
      }
    // return null;
    }   
   
}