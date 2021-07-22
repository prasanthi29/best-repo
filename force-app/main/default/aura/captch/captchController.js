({
    doInit: function (cmp, evt, helper){
        let vfOrigin = "https://custom22-dev-ed.my.salesforce.com";
console.log('vfOrigin');
        window.addEventListener("message", function(event) {
            console.log(event.data);
            if (event.origin !== vfOrigin) {
                // Not the expected origin: Reject the message!
                return;
            } 
            if (event.data==="Unlock"){            	
              let myButton = cmp.find("myButton");
                myButton.set('v.disabled', false);
            }            
        }, false);                
    },
    doSubmit: function (cmp, evt, helper){
        alert("Do Submit");
    }
    
})