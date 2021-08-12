public class CustomerSelectApxxController{
 @AuraEnabled
public static decimal getCustomerDataa(String cashierfirstname,Date today){
        if(!Schema.SObjectType.Case.isAccessible())
            throw new AuraHandledException('error.  cannot access customer');
        
        
		if(cashierfirstname ==null || today==null)
            return -1;
       //list<decimal> customerList2=new list<decimal>();
      // customer__c customer = new customer__c();
      	Account customerst= [SELECT name,first_name__c,last_name__c,AnnualRevenue,rating, st__c,(SELECT customer_order_date__c FROM customers__r WHERE customer_order_date__c=:today) FROM Account WHERE first_name__c=:cashierfirstname LIMIT 1];
        
        
 		decimal totalm = customerst.st__c;
        return totalm;
        
        //return -1;
    }
}