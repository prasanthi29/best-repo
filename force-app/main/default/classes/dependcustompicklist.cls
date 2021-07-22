public class dependcustompicklist {

    public String getSelectstate() {
        return null;
    }


    public String selectcity { get; set; }

    public String selectcountry { get; set; }

    public list <SelectOption> getcountry()
    {
        list <SelectOption> opt = new list <SelectOption> ();
        opt.add(new SelectOption ('','Select'));
        opt.add(new SelectOption ('India','India'));
        opt.add(new SelectOption ('US','US'));
        opt.add(new SelectOption ('UK','UK'));
        return opt;
    }

        public list <SelectOption> getcity()
    {
        list <SelectOption> opt1 = new list <SelectOption> ();
        if(selectcountry != null)
            {
                if(selectcountry == 'India')
                {
                opt1.add(new SelectOption ('','Select'));
                opt1.add(new SelectOption ('Kanpur','Kanpur'));
                opt1.add(new SelectOption ('Ghaziabad','Ghaziabad'));
                opt1.add(new SelectOption ('Noida','Noida'));
                }
                if(selectcountry == 'US')
                {
                opt1.add(new SelectOption ('','Select'));
                opt1.add(new SelectOption ('Washington DC','Washington DC'));
                opt1.add(new SelectOption ('New York','New York'));
                opt1.add(new SelectOption ('Los Angeles','Los Angeles'));
                }
                if(selectcountry == 'UK')
                {
                opt1.add(new SelectOption ('','Select'));
                opt1.add(new SelectOption ('London','London'));
                opt1.add(new SelectOption ('Paris','Paris'));
                //opt1.add(new SelectOption ('',''));
                }
            }
        return opt1;
    }
}