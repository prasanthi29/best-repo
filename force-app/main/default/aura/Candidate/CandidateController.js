({
    doInit: function (cmp, evt, helper){
        let vfOrigin = "https://custom22-dev-ed--c.ap5.visual.force.com";
        window.addEventListener("message", function(event) {
            console.log(event.data);
            if (event.origin !== vfOrigin) {
                // Not the expected origin: Reject the message!
                return;
            } 
            if (event.data==="Unlock"){            	
              let myButton = cmp.find("myButton");
                myButton.set('v.disabled', false);
            }            
        }, false);                
    },
    submit: function (cmp, evt, helper){
        alert("Do Submit");
    }
    
})
    
({ 
    submit : function(component, event, helper) {
		console.log('submit record');
        
        //getting the candidate information
        var candidate = component.get("v.candidate");
        
        //Validation
        if($A.util.isEmpty(candidate.First_Name__c) || $A.util.isUndefined(candidate.First_Name__c)){
            alert('First Name is Required');
            return;
        }            
        if($A.util.isEmpty(candidate.Last_Name__c) || $A.util.isUndefined(candidate.Last_Name__c)){
            alert('Last Name is Rqquired');
            return;
        }
        if($A.util.isEmpty(candidate.Email__c) || $A.util.isUndefined(candidate.Email__c)){
            alert('Email is Required');
            return;
        }
        
        //Calling the Apex Function
        var action = component.get("c.createRecord");
        
        //Setting the Apex Parameter
        action.setParams({
            candidate : candidate
        });
        
        //Setting the Callback
        action.setCallback(this,function(a){
            //get the response state
            var state = a.getState();
            
            //check if result is successfull
            if(state == "SUCCESS"){
                //Reset Form
                var newCandidate = {'sobjectType': 'Candidate__c',
                                    'First_Name__c': '',
                                    'Last_Name__c': '',
                                    'Email__c': ''
                                   
                                   };
                //resetting the Values in the form
                component.set("v.candidate",newCandidate);
                alert('Record is Submit Successfully');
            } else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        
		//adds the server-side action to the queue        
        $A.enqueueAction(action);

	}
})