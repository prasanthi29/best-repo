public class FetchAccName {
    public  void fetchaccount(List<Opportunity> NewOpps) {
 
    List<Id> oppIds = new List<Id>();
        for (Opportunity opp:NewOpps ){
             oppIds.add(opp.Id);
        }
    List<Opportunity> oppr = [select id , Name,Account.Name From Opportunity Where id in :oppIds];
                  for(Opportunity opps : oppr){
                        date myDate = date.Today();
                        Integer month = myDate.month();
                        Integer day = myDate.day();
                        Integer year = myDate.year();
                        opps.Name = (opps.Name +opps.Account.Name +' '+day+'-'+month+ '-'+year);
                    }       
 
    Update oppr;
    }
}