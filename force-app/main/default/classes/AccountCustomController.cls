public class AccountCustomController {
    
	public Account acc { get{
        if(acc==null)
            return [SELECT Id, Name FROM Account WHERE Name = 'Burlington Textiles Corp of America'];
        else
        {	
            if(acc.AnnualRevenue>0 && acc.AnnualRevenue<500000)
                acc.Rating='Cold';
            else if(acc.AnnualRevenue>=500000 && acc.AnnualRevenue<1000000)
                acc.Rating='Warm';
            else
                acc.Rating='Hot';
            return acc;
        }
    } set; }

}