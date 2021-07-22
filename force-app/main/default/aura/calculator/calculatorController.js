({
	doAdd : function(component, event, helper) {
		var num1=component.get('v.Input1');
        var num2=component.get('v.Input2');
        //alert(parseInt(num1)+parseInt(num2));
        component.set('v.Output',parseInt(num1)+parseInt(num2));
        
	},
    
    doSub:function(component, event, helper) {
		var num1=component.get('v.Input1');
        var num2=component.get('v.Input2');
       // alert(parseInt(num1)-parseInt(num2));
        component.set('v.Output',parseInt(num1)-parseInt(num2));
    },
    
    doMul:function(component, event, helper) {
		var num1=component.get('v.Input1');
        var num2=component.get('v.Input2');
        //alert(parseInt(num1)*parseInt(num2));
        component.set('v.Output',parseInt(num1)*parseInt(num2));
    },
    
    dodiv:function(component, event, helper) {
		var num1=component.get('v.Input1');
        var num2=component.get('v.Input2');
        //alert(parseInt(num1)/parseInt(num2));
        component.set('v.Output',parseInt(num1)/parseInt(num2));
    },
    
    
    
    
})