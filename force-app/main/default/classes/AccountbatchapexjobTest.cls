@isTest
public class AccountbatchapexjobTest
{
static testmethod void testbatch()
{
List<account>lst=new List<account>();
for(Integer i=0;i<200;i++)
{
account ac= new account();
ac.name='name'+i;
lst.add(ac);
}
insert lst;
test.startTest();
Accountbatchapexjob a= new Accountbatchapexjob();
database.executebatch(a);
test.stopTest();
}
}