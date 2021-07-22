({
 helperMethod : function(component,type) {
        if(type=='initialLoad')
        {
  var currentAccountId=component.get("v.recordId");
        var action=component.get('c.getAllContactRelatedToParent');
        var parentContactArray=[];
        action.setParams({
            currentAccId : currentAccountId,
        });
       action.setCallback(this,function(response){     
            var state=response.getState();
            var resultData=response.getReturnValue();
            var recordLength=response.getReturnValue().length;
            component.set("v.totalRecords",recordLength);
            var paginateData=[];
            if(state==="SUCCESS")
            {
              component.set("v.contactList",resultData);
                //alert('contactList'+component.get("v.contactList"));
              for(var i=0;i<5;i++)
                  {
                    if(recordLength > i)
                    {
                        paginateData.push(resultData[i]);
                     
                    }                   
                  }
                  component.set("v.contactListPaginateWise",paginateData);
                  component.set("v.lastPageNumber",Math.ceil(recordLength/5));
                  //alert("lastPageNumber"+component.get("v.lastPageNumber"));
           
            }
       
        });
        $A.enqueueAction(action);
 }
        if(type=='next')
        {
            var pgNumber=component.get("v.pageNumber");
            var limit=5*pgNumber;
            var start=limit-5;
            //alert('limit'+limit);
            var paginateData=[];
            var contactList=[];
            contactList=component.get("v.contactList");
            var recordLength=component.get("v.totalRecords");
             for(var i=start;i<limit;i++)
                  {
                    if(recordLength > i)
                    {
                        paginateData.push(contactList[i]);
                     
                    }                   
                  }
             component.set("v.contactListPaginateWise",paginateData);
        }
        if(type=='previous')
        {
            var pgNumber=component.get("v.pageNumber");
            var limit=5*pgNumber;
            var start=limit-5;
           // alert('limit'+limit);
            var paginateData=[];
            var contactList=[];
            contactList=component.get("v.contactList");
            var recordLength=component.get("v.totalRecords");
             for(var i=start;i<limit;i++)
                  {
                    if(recordLength > i)
                    {
                        paginateData.push(contactList[i]);
                     
                    }                   
                  }
             component.set("v.contactListPaginateWise",paginateData);
        }
    }
})