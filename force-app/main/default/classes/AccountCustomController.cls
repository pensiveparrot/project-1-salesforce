public class AccountCustomController {
    public List<Account> acctList{get;set;}
    public AccountCustomController(){
        
        acctList=new List<Account>();
    }
   
    public Account acc { get {
        Integer count = [SELECT COUNT() FROM Account];
        Integer rand = Math.floor(Math.random() * count).intValue();
        if(acc==null)
            return [SELECT first_name__c,last_name__c,AnnualRevenue,rating FROM Account LIMIT 1 OFFSET :rand];

        
    else{
       if(acc.AnnualRevenue<50000000){
            acc.rating='Cold';  
            addAccount();
        }
        else if(acc.AnnualRevenue>=50000000 && acc.AnnualRevenue<100000000 /*	&& bFlag ==false*/){
            acc.rating='Warm';
            addAccount();
        }
        else{
            
            acc.rating='Hot';       
            addAccount();
        }
        
        return acc;               }

}
  set; }
  public void addAccount(){   
        acctList.add(acc);
            
  }
  public void saveChanges(){
      for(Integer i=0;i<=acctList.size();i++){
        if(acctList.get(i)==acc)
        acctList.remove(i);
      }
    upsert acctList;

  }
}