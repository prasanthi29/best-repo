({
	
    init: function(component, event) {
	var action = component.get("c.fetchContact");
    action.setCallback(this, function(a) {

           var state = a.getState();
	
            if (state === "SUCCESS") {
                //alert('contact list'+a.getReturnValue()[0].Id);
               component.set("v.listofcontacts", a.getReturnValue());
            } 
        });
        $A.enqueueAction(action);
      },
    
    
   
})