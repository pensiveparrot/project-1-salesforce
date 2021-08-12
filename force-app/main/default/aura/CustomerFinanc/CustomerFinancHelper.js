({    
getFinancHelper : function(component) {
    let getFinanc = component.get("c.getCustomerDataa");
    getFinanc.setParams({ today : component.get("v.today"),cashierfirstname : component.get( "v.cashier_first_name") });
	getFinanc.setCallback(this, function(response){
            if(response.getState() == "SUCCESS"){
                
                console.log(response.getReturnValue());                
                component.set("v.totalm", response.getReturnValue());
            }
        });
        $A.enqueueAction(getFinanc);
}
   })