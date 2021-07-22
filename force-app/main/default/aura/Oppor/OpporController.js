({   
  navigateToOppty:function(component){
  // it returns only first value of Id
  var Opprec  = component.get("v.oppty");

  var sObectEvent = $A.get("e.force:navigateToSObject");
    sObectEvent .setParams({
    "recordId": Opprec.Id  ,
    "slideDevName": "detail"
  });
  sObectEvent.fire(); 
},
  navigateToAccount:function(component){
   // it returns only first value of Id
   var AcctId = component.get("v.oppty").AccountId;

   var sObectEvent = $A.get("e.force:navigateToSObject");
    sObectEvent .setParams({
    "recordId": Acctid,
    "slideDevName": "detail"
   });
    sObectEvent.fire(); 
   },
 })