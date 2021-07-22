public class createcontact{
public string contactname{get;set;}

public void callControllerMethod()
{

contact obj=new contact();
obj.lastname=contactname;
insert obj;

}

}