({
    press : function(cmp, event, helper) {
        //set the child component value.
        cmp.set('v.myString','Hello World');
        var vx = cmp.get("v.method");
        //fire event from child and capture in parent
        $A.enqueueAction(vx);
    }
})