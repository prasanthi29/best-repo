({
	doInit : function(component, event, helper) 
    {
        var action=component.get("");
        action.setParams({
            
            recordId:component.get("v.recordId")
        });
    
        action.setCallback(this,function(data){
         component.set("v.contacts",data.getReturnValue());
        });
    
                           $A.enqueueAction(action);
        
    }
})