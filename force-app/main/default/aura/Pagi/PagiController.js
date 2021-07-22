({
    doInitialization : function (component, event, helper) {
       
        var nt=component.get("v.navigateType");
        component.set("v.pageNumber",1);
 
  helper.helperMethod(component,nt);
     
    },
 goToNext: function(component, event, helper) {
        var pgNumber=component.get("v.pageNumber");
        pgNumber=pgNumber+1;
        component.set("v.pageNumber",pgNumber);
        component.set("v.navigateType",'next');
        var ntType=component.get("v.navigateType");
        helper.helperMethod(component,ntType);
    },
    goToPrevious: function(component, event, helper) {
        var pgNumber=component.get("v.pageNumber");
        pgNumber=pgNumber-1;
        component.set("v.pageNumber",pgNumber);
        component.set("v.navigateType",'previous');
        var ntType=component.get("v.navigateType");
        helper.helperMethod(component,ntType);
    },
    selectDeselectAll: function(component, event, helper){
      //  alert('In selectDeselectAll');
        var trueFalseCheck=event.getSource().get("v.value");
        alert('trueFalseCheck'+trueFalseCheck);
        var conList=component.get("v.contactList");
        var pagnitaList=component.get("v.contactListPaginateWise");
        var conListUpd=[];
        var pagnitaListUpd=[];
        for(var i=0;i<conList.length;i++)
            {
                if(trueFalseCheck==true)
                {
                    conList[i].check=true;
                }
                else
                {
                    conList[i].check=false;
                }
                conListUpd.push(conList[i]);
            }
        component.set("v.contactList",conListUpd);
        for(var i=0;i<pagnitaList.length;i++)
            {
                if(trueFalseCheck==true)
                {
                    pagnitaList[i].check=true;
                }
                else
                {
                    pagnitaList[i].check=false;
                }
                pagnitaListUpd.push(pagnitaList[i]);
            }
             component.set("v.contactListPaginateWise",pagnitaListUpd);
   
    },
    addAllSelectedContacts :function(component, event, helper){
        var allSelectedContact=component.get("v.contactList");
       // alert("allSelectedContact"+allSelectedContact);
        var contactListToAdd=[];
        for(var i=0;i < allSelectedContact.length;i++)
            {
                if(allSelectedContact[i].check==true)
                {
                    alert("allSelectedContact[i].check==true");
                    contactListToAdd.push(allSelectedContact[i].obj);
                }
             
            }
        component.set("v.finalListToAdd",contactListToAdd);
        var finalListToAdd=component.get("v.finalListToAdd");
        alert('finalListToAdd'+finalListToAdd);
        var action=component.get('c.addAllSelectedContact');
        var currentAccId=component.get("v.recordId");
        action.setParams({
            conList :finalListToAdd,
            currentAccId:currentAccId

         
         
        });
        action.setCallback(this,function(response)
                           {
                               var state=response.getState();
                               if(state==="SUCCESS")
                               {
                                   alert('Contact Inserted Successfully');
                               }
                             
                           });
        $A.enqueueAction(action);
     
    }
 
})