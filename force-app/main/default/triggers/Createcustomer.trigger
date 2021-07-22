trigger Createcustomer on Customer1__c (before Update) {
    
List<Test__c> test = new List<Test__c>();
    for(Customer1__c c:trigger.old)
    {
        Test__c t= new Test__c();
        t.Name=c.Name;
        t.Salary__c=c.Salary__c;
        t.Phone__c=c.Phone__c;
   test.add(t);
    }

   insert test; 
}