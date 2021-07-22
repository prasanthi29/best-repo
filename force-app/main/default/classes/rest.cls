@RestResource(UrlMapping='/Account1/*')
global   with Sharing class rest   {
@HttpPost
    global static string  doPost(String name,String descrp){
        
        Account a= new Account(Name=name, 	Description =descrp);
            insert a;
     return a.Id;
   
    }

        }