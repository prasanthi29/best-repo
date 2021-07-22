public class ctlDepPickLst {
public String country {get;set;}
public String state {get;set;}
public String city {get;set;}

public List<SelectOption> getCountries()
{
    List<SelectOption> options = new List<SelectOption>();
    options.add(new SelectOption('None','--- Select ---'));        
    options.add(new SelectOption('US','United States'));
    options.add(new SelectOption('IN','India'));
    return options;
} 

public List<SelectOption> getStates()
{
    List<SelectOption> options = new List<SelectOption>();
    if(country == 'US')
    {       
        options.add(new SelectOption('CO','Colorado'));
        options.add(new SelectOption('NE','Nevada'));
        options.add(new SelectOption('TE','Texas'));
    }
    else if(country == 'IN')
    {       
        options.add(new SelectOption('BI','Bihar'));
        options.add(new SelectOption('KE','Kerala'));
        options.add(new SelectOption('MA','Manipur'));
    }
    else
    {
        options.add(new SelectOption('None','--- Select ---'));
    }      
    return options;
}       

public List<SelectOption> getCity()
{
    List<SelectOption> options2 = new List<SelectOption>();        
    if(state == 'CO')
    {
        options2.add(new SelectOption('BE','CO1'));
        options2.add(new SelectOption('MU','CO2'));
    }
    else
    {
        options2.add(new SelectOption('MI','test1'));
        options2.add(new SelectOption('AB','test2'));        
    }
    return options2;
}

}