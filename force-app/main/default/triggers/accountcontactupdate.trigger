trigger accountcontactupdate on Contact (after insert,after update,after undelete,after delete) {
    
   set<ID> aid= new set<Id>();
    if(trigger.isinsert || trigger.isundelete)
    for(Contact c:trigger.new)
    {
        aid.add(c.AccountId);   
}
List <account> acc = [select id,NO_Of_Contacts__c from Account where Id in:aid];
List <contact> con=[select id,name from contact where  AccountId in:aid];
for(Account a: acc)
{
    a.NO_Of_Contacts__c=con.size();
    
}
update acc;
}