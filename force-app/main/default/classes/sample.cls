public class sample {

    public PageReference onLoad() {
        return null;
    }


    public String getA() {
        return null;
    }


   public list<Account>acc{get;set;}
   
   public sample()
   {
   acc=[select id,name,Phone from Account];
   }
   }