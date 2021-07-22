({

    clickCreateItem : function(component, event, helper) {

        var validCamping = component.find('campingform').reduce(function (validSoFar,inputCmp){

        inputCmp.showHelpMessageIfInvalid();

        return validSoFar && inputCmp.get('v.validity').valid;

    }, true );

    if(validCamping)

    {

       var newCamping1 = component.get("v.newItem");

       console.log("Create Camping :" + JSON.stringify(newCamping1));

      // createCamping(component,newcamping);

       var theCampings = component.get("v.items");

       var newCamping = JSON.parse(JSON.stringify(newCamping1));

       console.log("Expenses before 'create': " + JSON.stringify(theCampings));

       theCampings.push(newCamping);

       component.set("v.items", theCampings);

       console.log("Expenses after 'create': " + JSON.stringify(theCampings));

       component.set("v.newItem",{ 'sobjectType': 'Camping_Item__c',
                    'Name': '',

                    'Quantity__c': 0.0,

                    'Price__c': 0

                });

    }

    }

    

   

})