public class CreateContactFromAccountController {
    public contact con {get; set;}

    public CreateContactFromAccountController(ApexPages.StandardController controller) {

       Account acc = (Account) controller.getRecord();
        system.debug(acc);
        con = new Contact();
    Account ac=[select id,name,billingcountry,billingPostalCode,billingstate,billingstreet,billingCity from account where id=:acc.id];
        con.AccountId = acc.Id;
        con.MailingCountry = ac.billingcountry;
        con.MailingPostalCode = ac.billingPostalCode;
        con.MailingStreet = ac.billingstreet;
        con.MailingState = ac.billingstate;
        con.MailingCity = ac.billingCity;

    }

     

    public PageReference saveContact() {

        insert con;

        return new PageReference('/'+con.AccountId);

    }

}