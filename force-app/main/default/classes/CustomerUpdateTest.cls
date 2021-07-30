@isTest
private with sharing class CustomerUpdateTest {
    @isTests
    public static void test(){
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
        for(customer__c c:cList){
            system.assertEquals(c.Service_Status__c, 'IS SERVED');
        }
        Test.stopTest();
    }
}
