public class contactsRows

{
@Auraenabled
public static list<contact>getcontacts()
{
return[select id,name from contact limit 10];
}
}