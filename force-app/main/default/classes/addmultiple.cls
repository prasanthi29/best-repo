Public class addmultiple{

Account ac= new Account();
Public list<Account>accountlist{get;set;}
Public addmultiple()
{
accountlist = new list<Account>();
accountlist.add(ac);
}
Public  void addAccount()
{
Account a= new Account();
accountlist.add(a);
}
public pagereference SaveAccount()
{
insert accountlist;
return  null;
}
}