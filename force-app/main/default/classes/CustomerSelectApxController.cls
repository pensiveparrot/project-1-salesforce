public class CustomerSelectApxController{
    @AuraEnabled
    public static decimal getCustomerData(){
        if(!Schema.SObjectType.Case.isAccessible())
            throw new AuraHandledException('error.  cannot access customer');
        
        
		    
       //list<decimal> customerList2=new list<decimal>();
      	Account customerst= [SELECT name,first_name__c,last_name__c,AnnualRevenue,rating, customerMoneySubtotal__c FROM Account WHERE first_name__c='nonullref' LIMIT 1];
 		decimal total = customerst.customerMoneySubtotal__c;
        return total;
        
        //return -1;
    }
}
/*
 * Decimal totalReceived = 0.00;

List<Money_Received__c> moneyReceived = [Select Amount_Received__c,Reservation__r.Total_Recieved__c from Money_Received__c where Id =: reservationId];


        for(Money_Received__c receivedMoney : moneyReceived ){
            if (totalReceived == 0.00){
                totalReceived += receivedMoney.Amount_Received__c;
            }
        }
 * 
 */