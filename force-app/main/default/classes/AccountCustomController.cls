public class AccountCustomController {
    
    public List<Account> acctList {get;set;}
    public Account acc { get {
    
    if(acc==null){
        acc=[SELECT Name,AnnualRevenue,Rating FROM Account WHERE Rating!=''];
        return acc;
    }
    else{

        if(acc.AnnualRevenue>0 && acc.AnnualRevenue<500000)
            acc.Rating='Cold';
        else if(acc.AnnualRevenue>=500000 && acc.AnnualRevenue<1000000 /*	&& bFlag ==false*/){
            acc.Rating='Warm';
        }
        else
            acc.Rating='Hot';       
    }
        return acc;               
}
  set; }
  public void addAccount(){
        Account a = new Account(AnnualRevenue=Math.round(Math.random()*2000000));
        acctList.add(a);          

  }
  public void saveChanges(){
    upsert acctList;

  }
}
