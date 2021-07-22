({
    handleSelect: function (cmp, event) {
        // This will contain the string of the "value" attribute of the selected
        // lightning:menuItem
        var selectedMenuItemValue = event.getParam("value");
        if(selectedMenuItemValue == 'Help'){
                    
                    var urlEvent = $A.get("e.force:navigateToURL");
                    urlEvent.setParams({
                        "url": 'https://xyz.com/Home'

                    });
                    urlEvent.fire();

        }

    else if(selectedMenuItemValue == 'Help Email'){

     var urlEvent = $A.get("e.force:navigateToURL");

     urlEvent.setParams({

       "url": 'https://xyz.com/HelpEmail'

     });

     urlEvent.fire();

 }
    }
        
})