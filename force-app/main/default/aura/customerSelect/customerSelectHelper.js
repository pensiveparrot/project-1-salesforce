({
    
	getFinancialsHelper : function(component) {
			let getFinancials = component.get("c.getCustomerData");
        	//let getFinancialData = component.get("c.getCustomerDataa");
        	//var today = $A.localizationService.formatDate(new Date(), "YYYY-MM-DD");
        	getFinancials.setParams({ today : component.get("v.today"),cashierfirstname : component.get( "v.cashier_first_name") });
    		
        getFinancials.setCallback(this, function(response){
            if(response.getState() == "SUCCESS"){
                
                console.log(response.getReturnValue());                
                component.set("v.totalv", response.getReturnValue());
            }
        });
		$A.enqueueAction(getFinancials);
         
        

        
	}
})