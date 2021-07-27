@isTest
private class TestClass {

	@isTest
    public static void test1(){
        CustomerSelect CS = new CustomerSelect();
        system.assertNotEquals(null, CS.customers15);
        system.assertNotEquals(null, CS.customers10);
        system.assertNotEquals(null, CS.customers5);
    }
    @isTest
    public static void test2(){
        CustomerServedController CSC = New CustomerServedController();
    }   
    
    @isTest
    public static void testTip(){
         CustomerSelect CS = new CustomerSelect();
		 CS.addTip();
    }
    @isTest
    public static void testServed(){
        CustomerServedController CSC = New CustomerServedController();
        CSC.addServed();
    }
    @isTest 
    public static void testSelected(){
        CustomerSelectController cselc = new CustomerSelectController();
        cselc.call();
    }
}