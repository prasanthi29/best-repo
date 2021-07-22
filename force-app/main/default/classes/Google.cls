public class Google{

  public string qry{get;set;}

   

  public pagereference searchpage(){

    Pagereference pg=new pagereference('http://www.google.com/search?q='+'google');

    pg.setRedirect(true);

    return pg;

  }

}