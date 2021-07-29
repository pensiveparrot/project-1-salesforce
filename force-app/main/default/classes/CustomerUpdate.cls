public class CustomerUpdate implements Database.Batchable<sObject>{
    public List<customer__c>cusList {get;set;}
    public CustomerUpdate (){
        cusList = new List<customer__c>();
    }
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator('select Name, Cashier__c, subtotal__c, tip__c, is_Served__c, Service_status__c from customer__c');
    }
    public void execute(Database.BatchableContext bc, List<customer__c>clist){
        for(customer__c c:clist){
            if(c.Is_Served__c==True)
            {c.Service_status__c='IS SERVED';}
            else{c.Service_status__c='NOT SERVED YET';}
        }
        update clist;
    }
    public void finish(Database.BatchableContext bc){}
}