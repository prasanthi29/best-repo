trigger account4 on Account (before insert) {
    
     List<account> ac= new list<Account>();
    account a= new account();
    for (Integer i=0;i<5;i++)
    {
        a.name='raviii';
        ac.add(a);
        insert ac;
    }

}