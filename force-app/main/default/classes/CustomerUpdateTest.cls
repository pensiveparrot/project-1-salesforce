@isTest
private with sharing class CustomerUpdateTest {
    
    public static testmethod void test(){
        List<customer__c>cList = new List<customer__c>();
        for(integer i=0; i<200;i++){
            customer__c c = new customer__c();
            c.Is_Served__c=true;
            c.Service_status__c='NOT SERVED YET';
            cList.add(c);
        }
        insert cList;

        Test.startTest();
        CustomerUpdate cu = new CustomerUpdate();
        Database.executeBatch(cu);
        Test.stopTest();
        List<customer__c>customerList = [select Name, Cashier__c, subtotal__c, tip__c, is_Served__c, Service_status__c from customer__c]; 
        system.assertEquals(customerList[0].Service_Status__c, 'IS SERVED');
       
    }
}