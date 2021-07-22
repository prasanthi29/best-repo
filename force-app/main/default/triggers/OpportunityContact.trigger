trigger OpportunityContact on Contact (After  insert) {

    Opportunity op = new Opportunity();
    for(Contact c : trigger.new)
    
     String CloseDate = '18/12/2017';
   Date dt = Date.parse('CloseDate');
    op.CloseDate=dt;
    op.StageName='closed won';
       op.Name='str';
        insert op;
    
}