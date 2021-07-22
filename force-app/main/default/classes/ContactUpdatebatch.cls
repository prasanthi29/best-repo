global class ContactUpdatebatch implements Database.Batchable<Sobject>

{
global Database.QueryLocator start(Database.BatchableContext bc)
{
    string query='select id,name,Phone from contact';
    return Database.getQueryLocator(query);
}
global void execute(Database.BatchableContext Bc, List<Contact> Scope)
{
for(Contact  c:Scope)
{
    c.Phone='+91789999991';
    
}
    
update scope;
    
}
global void finish(Database.BatchableContext Bc)
        
    {
      Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
        
    }
}