public class CustomerServedController{
    public Set<Customer__c>cset{get;set;}
    public List<Customer__c> csServed {get;set;}
    public List<Customer__c> cList{get;set;}
    public CustomerUpdate cu{get;set;}
    public CustomerServedController(){
        cset = new Set<Customer__c>();
        csServed = new List<Customer__c>();
        cList = new List<Customer__c>();
        cu = new CustomerUpdate();
    }
    public void addServed(){
        clearContainer();
        for(Customer__c c: [select Name, Cashier__c, subtotal__c, tip__c, is_Served__c, Service_status__c from customer__c]){
            if(c.is_Served__c){
                cset.add(c);
            }
        }
        csServed.addAll(cset);
    }
    public void displayCustomerInfo(){
        clearContainer(); 
        for(Customer__c c: [select Name, Cashier__c, subtotal__c, tip__c, is_Served__c, Service_status__c from customer__c]){
                cset.add(c);
        }
        cList.addAll(cset); 
    }
    public void updateServiceStatus(){
        DataBase.executeBatch(this.cu);
    }
    public void clearContainer(){
        cset.clear();
        cList.clear();
        csServed.clear();
    }
}