/*MyIntegrationComponentController.js*/
{
    "impactRestAPI" : function(component) {
        var myRestRequest = component.get("c.makeCallout");
        myRestRequest.setParams({
            		 endPoint : component.get("v.endPoint"),
                     method : component.get("v.method") 
        			});
        myRestRequest.setCallback(this, function(action) {
            if (action.getState() === "SUCCESS") {
            	component.set("v.ResponseBody", myRestRequest.getReturnValue());
            }else if (state === "ERROR") {}
        });
        $A.enqueueAction(myRestRequest);
    } 
}