({
	getFinancialsHelper : function(component) {
		
        
        let getFinancials = component.get("c.getCustomerData");
       

  		
        getFinancials.setCallback(this, function(response){
            if(response.getState() == "SUCCESS"){
                console.log(response.getReturnValue());                
                component.set("v.totalv", response.getReturnValue());
            }
        });
        $A.enqueueAction(getFinancials);
        
	}
})