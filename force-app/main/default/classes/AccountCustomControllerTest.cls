@isTest  
public class AccountCustomControllerTest {
    @testSetup static void testsetupmethodacc(){
        AccountCustomController acct = new AccountCustomController();
        //acct.acctList=new List<Account>();
       	acct.acctSet=new Set<Account>();
        acct.a=new account(name='adfalskdjfklajsdf',first_name__c='test1',last_name__c='test2',AnnualRevenue=500000,rating='Warm');
        acct.acctList=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
        acct.acctListplaceholder=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
        insert acct.a;
        acct.a=new account(name='adfalskdjfklajsdff',first_name__c='test2',last_name__c='test3',AnnualRevenue=50000001,rating='Hot');
        insert acct.a;
        acct.a=new account(name='adfalskdjfklajsdfff',first_name__c='test3',last_name__c='test4',AnnualRevenue=1000000000,rating='Cold');
        insert acct.a;
       acct.updatedata();
        Integer j=0;
        Integer i=0;
        acct.saveChanges();
    }
  @isTest static void acccontrollertest1(){
	  	List <Account>acctListplaceholder=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
      	//List <Account>acctList=new List<account>();
      	system.assertEquals(acctListplaceholder.size(),1);
      	Account a=acctListplaceholder.get(0);
      List <Account>acctList=new List<account>{[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ],[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ],[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ],[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ],[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ]};
          //[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
      system.assertNotEquals(a,null);
      Integer i=0;
      Integer j=1;
      system.assertNotEquals(acctList,null);
    //  system.assertNotEquals(acctList.get(i),acctList.get(j));
      
     // system.assertNotEquals(acct.acc,null);
      
      //acct.acc=new account(first_name__c='swag',last_name__c='billbo',AnnualRevenue=500000,Rating='Cold');
   	//Integer count = [SELECT COUNT() FROM Account];


      	/*acct.count = [SELECT COUNT() FROM Account];
       	acct.rand = (Math.floor(Math.random() * acct.count).intValue());
        system.assertNotEquals(acct.rand, 0);
        system.assertNotEquals(acct.count, 0);
      	acct.acc=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 OFFSET :acct.rand]; */
      	
      		
    }
    @isTest static void acccontrollertest2(){
		List <Account>acctListplaceholder=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
      	system.assertEquals(acctListplaceholder.size(),1);
      	Account a=acctListplaceholder.get(0); 
      	system.assertNotEquals(a,null);
			
    }
      /* @isTest static void acccontrollertest3(){
        AccountCustomController acct = new AccountCustomController();
		system.assertNotEquals(acct.acc,null);
        system.assertNotEquals(acct.acc.first_name__c,null);	
        system.assertNotEquals(acct.acc.last_name__c,null);	
        system.assertNotEquals(acct.acc.AnnualRevenue,null);	
           system.assertNotEquals(acct.acc.rating,null);	
 		system.assertNotEquals(acct.acctList.size(),0);
    } *//*
        @isTest static void acccontrollertest4(){
        AccountCustomController acct = new AccountCustomController();
  		acct.acc=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 OFFSET :acct.rand];
        system.assertEquals(acct.acc.rating,'Hot');
        acct.acctList=new List<Account>();
        acct.acctSet=new Set<Account>();
        system.assertNotEquals(acct.acctList, null);
        system.assertNotEquals(acct.acctSet, null);
		system.assertNotEquals(acct.acc,null);
        system.assertNotEquals(acct.acc.AnnualRevenue,null);	
 		
    } 
    }*/
}