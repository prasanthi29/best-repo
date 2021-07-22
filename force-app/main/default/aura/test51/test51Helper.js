({
    createAccount: function(component, account) {
        console.log('inside helper123');
        
    var action = component.get("c.saveAccount");
        console.log('after method called123');
    action.setParams({
        "account": account
        //component.get("v.contacts")
         
    });
        
    action.setCallback(this, function(response){
        var state = response.getState();
        if (component.isValid() && state === "SUCCESS") {
             //alert("From server: " + response.getReturnValue());

            var accounts = component.get("v.accounts");
            accounts.push(response.getReturnValue());
            component.set("v.accounts", accounts);
             
        }
    });
    $A.enqueueAction(action);
},    
    createContact: function(component, contact) {
        console.log('inside helper');
        
    var action = component.get("c.saveContact");
        console.log('after method called ');
    action.setParams({
        "Contact": contact
        //component.get("v.contacts")
         
    });
    action.setCallback(this, function(response){
        var state = response.getState();
        if (component.isValid() && state === "SUCCESS") {
            var contacts = component.get("v.contacts");
            contacts.push(response.getReturnValue());
            component.set("v.contacts", contacts);
             
        }
    });
    $A.enqueueAction(action);
},
    
})