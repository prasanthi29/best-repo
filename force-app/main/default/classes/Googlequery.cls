public class Googlequery{

  public string qry{get;set;}

   

  public pagereference searchpage(){

    Pagereference pg=new pagereference('http://www.google.com/search?q='+qry);

    pg.setRedirect(true);

    return pg;

  }

}