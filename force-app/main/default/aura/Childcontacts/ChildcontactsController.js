({
    doInit:function(component,helper,event)
    {
    var action= component.get("c.fecthcontacts");
        action.setCallback(this,function(data){
                       
    component.set("v.contactList",data.getReturnvalue());
  });   

	
$A.enqueueAction(action);
}
 })