public class testaccount {
public class TableRow{


public String Phone{get;set;}

}
public list<TableRow>RowList{get;set;}
public testaccount()
{
RowList= new List<TableRow>();
tableRow tr;
for(Contact con:[select id,phone,Name from Contact]){
tr= new TableRow();

tr.Phone=con.Phone;


RowList.add(tr);
}
}
}