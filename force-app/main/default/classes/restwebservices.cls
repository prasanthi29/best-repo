@RestResource(urlMapping = '/services/data/v29/account/*')
    global class restwebservices{
   
    @Httpget
    global static account getdetails(){
        Restrequest req = restcontext.request;
        Restresponse res = restcontext.response;
        string name = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        account a = [select id,name,phone,type,website,rating from account where name =: name];
        return a;
   
    }
  @Httppost
   global static id createAccount(String name,string phone){
        Restrequest req = restcontext.request;
        Restresponse res = restcontext.response;
        account a= new account();
        a.name=name;
        a.phone =phone;
        insert a;
        return a.id;
        }
        }