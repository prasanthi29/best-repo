({
	addItem : function(component, event, helper) {
		var task=cmp.get('v.task');
        var Task5= cmp.get('v.Task5');
        Task5.push('task');
        cmp.set('v.Task5',task);
        cmp.set('v.task',{});
	}
})