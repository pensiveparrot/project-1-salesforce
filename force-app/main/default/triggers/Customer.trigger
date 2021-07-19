trigger Customer on Customer__c (before insert) {
List<Customer__c> customerList = Trigger.new;
    for(Customer__c c:customerList){
        c.tip__c=0.20*c.subtotal__c;
        c.total__c=c.subtotal__c+c.tip__c;
        
    }
}