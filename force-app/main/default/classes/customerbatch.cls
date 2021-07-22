global class customerbatch implements Database.Batchable<Sobject>
{
    global string[] Email =new String[]{'test@gmail.com'};
               
        global Database.QueryLocator start (Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select Id,name,Status__c,Description__c from Customer__c where createdDate=today And Active__c =true');
           
        }
global void execute(Database.BatchableContext bc,List<Customer__c> c)
{
    List<Customer__c> listcustomer= new List<Customer__c>();
    List<Customer__c>Updatelistcustomer= new List<Customer__c>();
    for(Customer__c customer:c){
    Customer__c customer1 = new Customer__c();
        
        customer1.Status__c='proceess';
        customer1.Description__c='test1233356';
       
        Updatelistcustomer.add(customer1);
        Update Updatelistcustomer;
    }
    system.debug('Updatelistcustomer'+Updatelistcustomer);
      
    if(Updatelistcustomer!=null && Updatelistcustomer.size()>0)
    {
Database.update(Updatelistcustomer);
       // system.debug('list zize'+Updatelistcustomer.size());
}
}

   global void finish(Database.BatchableContext bc)   
   {

    Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
       
       AsyncApexJob a = [Select a.TotalJobItems, a.Status, a.NumberOfErrors,
      a.JobType, a.JobItemsProcessed, a.ExtendedStatus, a.CreatedById,
      a.CompletedDate From AsyncApexJob a WHERE id = :BC.getJobId()];
      system.debug('Jobid'+BC.getJobId());
       
       mail.setBccAddresses(Email);
       mail.setReplyTo('test@gmail.com');
       mail.setSenderDisplayName('batchjob processing');
       mail.setSubject('status'+a.Status);
       mail.setPlainTextBody('jobitems ' +a.TotalJobItems +'failure' + a.NumberOfErrors+'createdby'+ a.CreatedById);
       Messaging.sendEmail(new Messaging.SingleEmailMessage []{mail});
   }

}