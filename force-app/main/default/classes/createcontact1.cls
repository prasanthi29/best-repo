public class createcontact1{
public string contactname{get;set;}
public list<contact> contactList{get;set;}
public void callControllerMethod()
{

contactList=[select name from contact limit 10];

}

}