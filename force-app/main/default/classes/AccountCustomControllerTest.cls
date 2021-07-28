@isTest  
public class AccountCustomControllerTest {

  @isTest static void acccontrollertest1(){
        AccountCustomController acct = new AccountCustomController();
      	acct.acc=new Account(Name='bobsupertester',first_name__c='bob',last_name__c='supertester',AnnualRevenue=50000); 
     	   // system.assertNotEquals(acct.acc, null);
      		system.assertNotEquals(acct.acc.AnnualRevenue, null);
      		system.assertNotEquals(acct.acc.AnnualRevenue, 0);
      		//system.assertNotEquals(acct.acc.Rating,null);
      		system.assertEquals(acct.acc.Rating,'Cold');
      		//system.assert(acct.bFlag);
      		//system.assertNotEquals(acct.acc.Rating,'Warm');
      		//system.assertNotEquals(acct.acc.Rating,'Hot');
      		
    }
    @isTest static void acccontrollertest2(){
        AccountCustomController acct = new AccountCustomController();
      	acct.acc=new Account(Name='bobsupertestertwo',first_name__c='bob',last_name__c='supertester',AnnualRevenue=500000); 
        system.assertNotEquals(acct.acc.AnnualRevenue, null);
      	system.assertNotEquals(acct.acc.AnnualRevenue, 0);
        system.assertEquals(acct.acc.Rating,'Warm');
    }
     @isTest static void acccontrollertest3(){
       	AccountCustomController acct = new AccountCustomController();
      	acct.acc=new Account(Name='bobsupertesterthree',first_name__c='bob',last_name__c='supertester',AnnualRevenue=100000000); 
        system.assertNotEquals(acct.acc.AnnualRevenue, null);
      	system.assertNotEquals(acct.acc.AnnualRevenue, 0);
        system.assertEquals(acct.acc.Rating,'Hot'); 
         
     }
	 @isTest static void acccontrollertest4(){
		AccountCustomController acct = new AccountCustomController();
	  	system.assertEquals(acct.acc,null);
	  
  }
    	 @isTest static void acccontrollertest5(){
		AccountCustomController acct = new AccountCustomController();
	  	system.assertEquals(acct.acc,null);
        system.assertEquals(acct.acc.AnnualRevenue,null);
        system.assertEquals(acct.acc.AnnualRevenue, 0);
        system.assertEquals(acct.acc.AnnualRevenue,(Decimal)(Math.random()*2000000)) ;
	  
  }
}