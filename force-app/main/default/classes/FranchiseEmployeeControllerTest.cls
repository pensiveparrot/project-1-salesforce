@isTest
private class FranchiseEmployeeControllerTest { 
    
    @isTest
    public static void emptyWorkerTest(){
        FranchiseEmployeeController controllerTest = new FranchiseEmployeeController();
        System.assertNotEquals(controllerTest.dat, Date.today());
        controllerTest.dat = Date.today();
        controllerTest.getWorkers();
        System.assertEquals(controllerTest.dat, Date.today());
        System.assertEquals(controllerTest.franchiseStore.isEmpty(), controllerTest.franchiseStore.Size() == 0);
    }
    
    @isTest
    public static void getWorkersTest(){
        FranchiseEmployeeController controllerTest = new FranchiseEmployeeController();
        worker_schedule__c testWorkerA = new worker_schedule__c(name='testWorkerA',worker__c='Willy',
                                                               franchise__c='Wonk',dayworked__c = Date.today());
        worker_schedule__c testWorkerB = new worker_schedule__c(name='testWorkerA',worker__c='Billy',
                                                               franchise__c='Goat',dayworked__c = Date.newInstance(1995, 12, 25));
        System.assertNotEquals(controllerTest.dat, Date.today());
        controllerTest.dat = Date.today();
        System.assertEquals(controllerTest.dat, Date.today());
        insert testWorkerA;
        insert testWorkerB;
        System.assert(controllerTest.franchiseStore.isEmpty());
        controllerTest.getWorkers();
        System.assertNotEquals(controllerTest.franchiseStore.isEmpty(), controllerTest.franchiseStore.Size() == 0);
    }
}