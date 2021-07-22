public class  fecthcontacts{
@AuraEnabled


public Static list<contact>fecthcontacts()
{
return[select id,Firstname,LastName,Phone,Email from Contact limit 1];
}
}