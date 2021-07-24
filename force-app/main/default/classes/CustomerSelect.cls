public class CustomerSelect{
   public List<Customer__c> customers15{get;set;}
   public List<Customer__c> customers10{get;set;}
   public List<Customer__c> customers5{get;set;}
    public CustomerSelect(){
        customers15=new List<Customer__c>();
        customers10=new List<Customer__c>();
        customers5=new List<Customer__c>();
    }
    public void addTip(){
        for(Customer__c c:[select Cashier__c, subtotal__c, tip__c from Customer__c]){
            if(c.tip__c>=c.subtotal__c*0.15){customers15.add(c);}
            else if(c.tip__c>=c.subtotal__c*0.10){customers10.add(c);}
            else{customers5.add(c);}
        }
    }
}