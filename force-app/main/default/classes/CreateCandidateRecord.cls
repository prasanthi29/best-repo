public with sharing class CreateCandidateRecord {

    /**
   * Create a new candidate Record
   *
   * @param Candidate__c candidate  candidate record to be inserted
   * 
   */
    @AuraEnabled
    public static void createRecord (Contact contact){
        
        try{
            System.debug('CreateCandidateRecord::createRecord::contact'+contact);
            
            if(contact!= null){
                insert contact;
            }
            
        } catch (Exception ex){
            
        }
        
    }    
}