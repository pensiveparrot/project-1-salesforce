public class CustomerSelectApxController{
    @AuraEnabled
    public static decimal getCustomerData(String cashierfirstname,Date today){
        if(!Schema.SObjectType.Case.isAccessible())
            throw new AuraHandledException('error.  cannot access customer');
        
        
		if(cashierfirstname ==null || today==null)
            return -1;
       //list<decimal> customerList2=new list<decimal>();
      // customer__c customer = new customer__c();
      	Account customerst= [SELECT name,first_name__c,last_name__c,AnnualRevenue,rating, customerMoneySubtotal__c,(SELECT customer_order_date__c FROM customers__r WHERE customer_order_date__c=:today) FROM Account WHERE first_name__c=:cashierfirstname LIMIT 1];
        
        
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