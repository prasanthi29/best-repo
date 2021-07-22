global class Accountbatchapexjob implements Database.Batchable<Sobject>

{
    global database.QueryLocator start(database.BatchableContext bc)
    {
        string query='select id,name from Account';
        return database.getQueryLocator(query);
            }

global void execute(database.BatchableContext bc,List<Account> scope)

{
for(Account a: scope)
{
    a.name=a.name+'test qa2';
    a.AccountSource='22';
    a.AnnualRevenue=333;
    a.Phone='789994444';

}
    update scope;
} 
    global void finish(database.BatchableContext bc)
    {
        system.debug('send email after the all records are inserte d sucessfully');
    }
}