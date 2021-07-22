public class future1 {

   
    /**
    * Webkul Software.
    *
    * @category  Webkul
    * @author    Webkul
    * @copyright Copyright (c) 2010-2016 Webkul Software Private Limited (https://webkul.com)
    * @license   https://store.webkul.com/license.html
    */
     
    @future
    public static void countContacts (List<Id> accountIds)
    {
        List<Account> accountList = new List<Account>();
        for(Id accId : accountIds)
        {
            Account acc = [Select Name from Account where Id =: accId];
            acc.NO_Of_Contacts__c = [Select count() from Contact where AccountId =: accId];
            accountList.add(acc);
        }
        update accountList;
    }
     
    public future1 ()
    {
        List<Account> accList = [Select Id from Account];
        List<Id> accountIds = new List<Id>();
        for(Account acc: accList)
        {
            accountIds.add(acc.Id);
        }
        future1.countContacts(accountIds);
   system.debug('countContacts');
    
    }
}