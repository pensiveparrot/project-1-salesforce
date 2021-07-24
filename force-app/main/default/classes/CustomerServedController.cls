public class CustomerServedController{
    public List<Customer__c> csServed {get;set;}
    public CustomerServedController(){
        csServed = new List<Customer__c>();
    }
    public void addServed(){
        for(Customer__c c: [select Cashier__c, subtotal__c, tip__c, is_Served__c from Customer__c]){
            if(c.is_Served__c){
                csServed.add(c);
            }
        }
    }
}