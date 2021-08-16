@IsTest
public class CustomerSelectApxxControllerTest {
    @testSetup static void testsetupcustomerselect(){
        
       
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
     	CustomerSelectApxxController.getCustomerDataa(cashierfirstname,today);
        
       CustomerSelectApxxController.getCustomerDataa(cashierfirstname,today);
        
		
    }  
 @isTest static void testcs2(){
        String cashierfirstname='nonullref';
        Date today=Date.newInstance(2021, 8, 11);
        system.assertNotEquals(CustomerSelectApxxController.getCustomerDataa(cashierfirstname,today), null);
    }
}