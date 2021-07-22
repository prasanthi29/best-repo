public class contactdetailes {

    public String getCon() {
        return null;
    }

Public List<Contact> con1{set;get;}
public string conname{set;get;}

public void getdata(){
con1=[select name,Description from Contact where name=:conname];
}
}