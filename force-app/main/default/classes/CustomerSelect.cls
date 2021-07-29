public class CustomerSelect{
   public List<Customer__c> customers15{get;set;}
   public List<Customer__c> customers10{get;set;}
   public List<Customer__c> customers5{get;set;}
   public Set<Customer__c> cset15{get;set;}
   public Set<Customer__c> cset10{get;set;}
   public Set<Customer__c> cset5{get;set;}
    public CustomerSelect(){
        customers15=new List<Customer__c>();
        customers10=new List<Customer__c>();
        customers5=new List<Customer__c>();
        cset15 = new Set<Customer__c>();
        cset10 = new Set<Customer__c>();
        cset5 = new Set<Customer__c>();
    }
    public void addTip(){
        for(Customer__c c:[select Name, Cashier__c, subtotal__c, tip__c from customer__c]){
            if(c.tip__c>=c.subtotal__c*0.15){cset15.add(c);}
            else if(c.tip__c>=c.subtotal__c*0.10){cset10.add(c);}
            else{cset5.add(c);}
        }
        customers15.addAll(cset15);
        customers10.addAll(cset10);
        customers5.addAll(cset5);
    }
}