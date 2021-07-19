@isTest
public class TriggerTest {
    @isTest
    public static void testFranchiseDelete(){
 	Franchise__c franc=new Franchise__c(Franchise_Country__c='United States',Franchise_Name__c='Franchise - ' + Math.random());
    insert franc;
    delete franc;
    }
 /*   @isTest 
    public static void testWorkerDelete(){
        Worker__c work=new Worker__c(Firstname__c='jimbob',Lastname__c='boblerk',Email__c='jimbobboblerk@geek.test',twoweeksnotice__c='yes');
     	insert work;
 		//System.assert(work.twoweeksnotice__c);
        delete work;
        }*/
              
    
/*@isTest
public static void testWorkerScheduleUpdate(){
    Worker_Schedule__c wS=new Worker_Schedule__c(DayWorked__c=Date.parse('7/12/2021'),HoursWorked__c='2');
    Date testDate=Date.parse('7/11/2021');
    wS.DayWorked__c=testDate;
    update wS;
    wS.DayWorked__c=null;
    update wS;
   // wS.DayWorked__c=null;
    //wS.DayWorked__c=Date.parse('07/14/2021');
   
}*/
    @isTest
    public static void testCustomerInsert(){
        Worker__c work=new Worker__c(Firstname__c='jimbob',Lastname__c='boblerk',Email__c='jimbobboblerk@geek.test',twoweeksnotice__c='yes');
        insert work;
        Customer__c c=new Customer__c(Cashier__c=work.Id,subtotal__c=20.00);
        
        insert c;
        
        
    }
}