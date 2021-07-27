public class CustomerSelectController {
    public CustomerSelect csb{get;set;}
    public List<Customer__c>first {get;set;}
    public List<Customer__c>sec {get;set;}
    public List<Customer__c>third {get;set;}
    public CustomerSelectController(){
        csb = new CustomerSelect();
        first = csb.customers15;
        sec = csb.customers10;
        third = csb.customers5;
    }
    public void call(){
        this.csb.addTip();
    }
    
}