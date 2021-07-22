public with sharing class ContactController {
    
    @AuraEnabled
    public static List<Contact> getcontacts(String contacts) {
        return [SELECT  Name,Email, MailingAddress, MobilePhone from Contact];
    }   
    
    @AuraEnabled
    public static Contact saveContact(Contact contacts) {
        // Perform isUpdatable() checking first, then
        insert contacts;
        return contacts;
    }
}