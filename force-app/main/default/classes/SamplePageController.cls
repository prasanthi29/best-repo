public class SamplePageController {

    public Account acct {get;set;}

    public SamplePageController(ApexPages.StandardController controller) {
        acct = [SELECT Id, Name FROM Account WHERE Id =:controller.getId()];
    }
    
    public PageReference redirectToVF() {
        PageReference pg = new PageReference('/apex/NextPage?aid=' + acct.Id + '&name=' + acct.Name);
        pg.setRedirect(true);
        return pg;
    }

}