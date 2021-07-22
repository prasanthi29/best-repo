({
	validateFields: function(component,event){

  var isValid = true;

   // get lookup value

   var lVal = component.get("v.selectedLookUpRecord"); 

   if(lVal.Id == undefined){

      isValid = false ;

      alert('Lookup field is required...Please select contact');

   }

   return isValid;

}

})