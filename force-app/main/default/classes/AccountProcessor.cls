public class AccountProcessor{
@future
Public static void CountContacts(Set<id> SetID)
{
list<Account>lstacc=[select id,name, NO_Of_Contacts__c,(select id,name from contacts) from account where Id In:setId];
for(Account acc:lstacc)
{
List<Contact> lstcont= acc.Contacts;

acc.NO_Of_Contacts__c= lstCont.size();
}
update lstacc;
}
}