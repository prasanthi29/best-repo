@isTest
public class TestCustomer {

    static testMethod void customertest()
    {
        Customer1__c  c= new Customer1__c();
        c.Name='ytry';
        c.Salary__c=8999;
        c.Phone__c='9999999978';
        insert c;
        
        Test__c t= new Test__c();
        
        t.Name=c.Name;
        t.Salary__c=c.Salary__c;
        t.Phone__c= c.Phone__c;
       
        insert t;
            
    
  system.assertEquals(t.Name,c.Name);
     system.assertEquals(t.Salary__c,c.Salary__c);   
    
        c.Name='testasser';
       c.Salary__c=977;
    update c;
}
    
}