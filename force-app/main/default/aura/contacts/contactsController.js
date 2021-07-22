({
	
    
    
    
    
  contacts: function(component, event,helper) {

    var newContact = component.get("v.newContact");
    var action = component.get("c.Submit");
     
    action.setParams({

        "contacts": newContact

    });

    action.setCallback(this, function(a) {

           var state = a.getState();
	
            if (state === "SUCCESS") {

                var Contact = {'sobjectType': 'Contact',
                                    'FirstName': '',
                                    'LastName': '',
                                    'Email': '', 
                                    'Phone': ''
                                   };


               component.set("v.contacts",newContact);
                 helper.init(component,event);
               // alert('Contact  Form  is submitted Successfully');
            } 
        
        //else if(state == "ERROR"){
              //  alert('Error in calling server side action');
           // }
        });
        
		//adds the server-side action to the queue        
        $A.enqueueAction(action);
      },
    
    
  clear: function(component, event) {
	component.set("v.newContact", '');
  },
    navToRecord:function (component, event, helper) {
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": component.get("v.newContact.Id")
        });
            navEvt.fire();
    },
   editRecord : function(component, event, helper) {
        var editRecordEvent = $A.get("e.force:editRecord");
        editRecordEvent.setParams({
            "recordId": component.get("v.newContact.Id")
        });
        editRecordEvent.fire();
    }
})