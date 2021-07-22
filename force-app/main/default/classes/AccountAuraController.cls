public class AccountAuraController {
    //added latest changes
        @AuraEnabled
    public static List<String> getIndustry(){
        List<String> options = new List<String>();
        Schema.DescribeFieldResult fieldResult = Account.Industry.getDescribe();
        List<Schema.PicklistEntry> pList = fieldResult.getPicklistValues();
        for (Schema.PicklistEntry p: pList) {
            options.add(p.getLabel());
        }
        return options;
    }
}