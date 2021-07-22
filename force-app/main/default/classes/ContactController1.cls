public with sharing class ContactController1{

@AuraEnabled

 
public static contact Submit(Contact contacts) {

 

insert contacts;

return contacts;

}

@AuraEnabled
public static list<contact> fetchContact(){
     List<contact> cnts=([Select FirstName,LastName,Email,Phone from Contact order by createddate desc]);    
        return cnts;
}
}