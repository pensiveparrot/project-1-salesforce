@isTest
public class CustomerSelectApxControllerTest {
    @testSetup static void testsetupcustomerselec(){
        
       
     	list<Account> customerst= new list<Account>();
       	customer__c c1= new customer__c(cashier__c = '0015e00000ExLoaAAF',subtotal__c=100);
        customer__c c2= new customer__c(cashier__c='0015e00000ExLoaAAF',subtotal__c=200);
        Account abc = new account(name='adfalskdjfklajsdf',first_name__c='test1',last_name__c='test2',AnnualRevenue=500000,rating='Warm');
     	//customerst.add(abc);
        insert c1;
        insert c2;
        insert abc;
        String cashierfirstname='nonullref';
        Date today=Date.newInstance(2021, 8, 11);
        customerst=[SELECT name,first_name__c,last_name__c,AnnualRevenue,rating, customerMoneySubtotal__c FROM Account WHERE first_name__c=:cashierfirstname LIMIT 1];
     	
        
       CustomerSelectApxController.getCustomerData(cashierfirstname,today);
        
		
    }
    @isTest static void testcs1(){
        String cashierfirstname='nonullref';
        Date today=Date.newInstance(2021, 8, 11);
        system.assertNotEquals(CustomerSelectApxController.getCustomerData(cashierfirstname,today), null);
    }   
}