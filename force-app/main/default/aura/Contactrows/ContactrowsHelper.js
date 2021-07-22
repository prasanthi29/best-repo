({
	findall : function(component,helper,event) 
      
    {
	var action=component.get("c.getcontacts");
    action.setCallback(this,function(a)
                       {
                           component.set("v.contacts",a.getReturnValue());
                       });
        $A.enqueueAction(action);
                               }
	
})