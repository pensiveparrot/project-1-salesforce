public class AccountCustomController {
    public Set <Account> acctSet{get;set;}
   public List<Account> acctList{get;set;}
public list<Account> acctListplaceholder{get;set;}
public account a{get;set;}
public AccountCustomController(){
acctList=new List<Account>();
acctSet=new Set<Account>();
acctListplaceholder=new List<Account>();
}

/*public Account acc { get{

if(acc==null){
    acc=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
    return acc;
   acctListplaceholder=[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 ];
    if(acctListplaceholder.size()==1){
        acc=acctListplaceholder.get(0);
        acctListplaceholder.clear();
    return acc;
    }

        return acc;
    

    }




}set;}*/


public void updatedata(){
for(Account a:[SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account] ){
if(a.AnnualRevenue>0){
if(a.AnnualRevenue<50000000){
    a.rating='Cold';  
    acctSet.add(a);
}
else if(a.AnnualRevenue>=50000000 && a.AnnualRevenue<100000000 /*	&& bFlag ==false*/){
    a.rating='Warm';
    acctSet.add(a);
    
}
    
else{
    a.rating='Hot';       
    acctSet.add(a);
    
}

   
}}

}
public void saveChanges(){
if(acctSet.size()!=acctList.size())
 acctList.addAll(acctSet);
    
}
  
}