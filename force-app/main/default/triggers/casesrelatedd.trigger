trigger casesrelatedd on Case (after  insert,after update) {
set<Id> AccountIds = new set<Id>();

List<Case> CaseList = new List<Case>();
    
   
    Map<Id,Account> acctsWithcases = new Map<Id,Account>(
        [SELECT Id,(SELECT Id FROM Cases) FROM Account WHERE Id IN :AccountIds]);
    
   
    for(Case a : Trigger.New)
    {
       
        { System.debug('acctsWithcases.get(a.Id).Cases.size()=' + acctsWithcases.get(a.Id).Cases.size());
   
        }
        if (acctsWithcases.get(a.Id).Cases.size() == 0) {
            
            CaseList.add(new case(    Status='New',
                                       Origin='Email',
                                       AccountId=a.Id));
        }           
    }
    if (CaseList.size() > 0) {
        insert CaseList;
    
    }
}