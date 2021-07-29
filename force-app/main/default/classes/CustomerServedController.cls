public class CustomerServedController{
    public Set<Customer__c>cset{get;set;}
    public List<Customer__c> csServed {get;set;}
    public CustomerServedController(){
        cset = new Set<Customer__c>();
        csServed = new List<Customer__c>();
    }
    public void addServed(){
        for(Customer__c c: [select Name, Cashier__c, subtotal__c, tip__c, is_Served__c from customer__c]){
            if(c.is_Served__c){
                cset.add(c);
            }
        }
        csServed.addAll(cset);
    }
}