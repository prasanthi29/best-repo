public class PermissionSetClr{
    public String sHostUrl{get;set;}
    public PermissionSetClr()
    {
        sHostUrl= ApexPages.currentPage().getHeaders().get('https://ap5.salesforce.com/0PS?setupid=PermSets&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DUsers'); //Get current Host url.
    }
}