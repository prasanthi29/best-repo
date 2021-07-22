public class AccountDataContoller {

    public list<Account> acc{set;get;}
    public string accname {set;get;}
    
    
    public void getdata(){
       acc = [select name,Phone, AccountNumber  from account where name = :accname];      
    }
}