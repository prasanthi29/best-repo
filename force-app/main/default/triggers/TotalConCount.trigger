trigger TotalConCount on Contact (after insert, after delete) {

    list<contact> con = new list<contact>();
    list<id> accid = new list<id>();
    
    if(trigger.isdelete){  
            for (contact con : [select accountid from contact where id in :trigger.old]){
            accid.add(con.accountid);
        }
    }
    
    if(trigger.isinsert){
         for (contact con : [select accountid from contact where id in :trigger.new]){    
            accid.add(con.accountid);
        }
    }
    
    list<contact> updcon = new list<contact>();
    updcon.clear();
    
    for (contact c : [select id from contact where accountid in :accid]){
           updcon.add(c);
    }
    
    list<account> acc = new list<account>();
    
    for(account a : [select id, Total_Contacts__c from account where id in :accid]){
           a.Total_Contacts__c = updcon.size();
           acc.add(a);       
    }
    
    update acc;

}