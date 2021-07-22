public with sharing class CreateCandidateRecord1 {

    
    @AuraEnabled
    public static void Submit(Candiadte__c candidate){
        
        try{
            System.debug('Submit record::createRecord::candidate'+candidate);
            
            if(candidate != null){
                insert candidate;
            }
            
        } catch (Exception ex){
            
        }
        
    }
    }