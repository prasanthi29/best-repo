({
	create : function(component, event, helper) {
		console.log('Create record');
var contact = component.get("v.contact");
        var action = component.get("c.createRecord");
        
        //Setting the Apex Parameter
        action.setParams({
            contact : contact
        });
        
        //Setting the Callback
        action.setCallback(this,function(a){
            //get the response state
            var state = a.getState();
            
            //check if result is successfull
            if(state == "SUCCESS"){
                //Reset Form
                var newContact = {'sobjectType': 'Contact',
                                    'First_Name__c': '',
                                    'Last_Name__c': '',
                                    'Email__c': '', 
                                     };
                //resetting the Values in the form
                component.set("v.contact",newContact);
                alert('Record is Created Successfully');
            } else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        
		//adds the server-side action to the queue        
        $A.enqueueAction(action);

	}
})