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
        
        customerst=[SELECT customerMoneySubtotal__c FROM Account];
     	  
        
       CustomerSelectApxController.getCustomerData();
        
		
    }
    @isTest static void testcs1(){
        system.assertNotEquals(CustomerSelectApxController.getCustomerData(), null);
    }
}