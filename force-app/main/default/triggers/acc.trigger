trigger acc on Account (before insert) {

public string res;
    for(Account a:trigger.new)
    {
        res=a.name.right(4);
        if(res!='text'){
            a.addError('last4digts text');
        }
    }
    }