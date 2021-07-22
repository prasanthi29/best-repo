({
	doClick : function(component, event, helper)
    {
	alert(component.isValid());
        alert(component.getName());
        alert(component.get('v.Whom'));
        component.find('v.Whom','test56');
        var agecomponent=component.find('test value');
        alert(agecomponent.get('v.value'));
        agecomponent.set('v.value',66);
	}
})