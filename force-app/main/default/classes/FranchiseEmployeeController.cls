public class FranchiseEmployeeController {
	public Date dat {get;set;}
    public Set<worker_schedule__c>workSet{get;set;}
    public List<worker_schedule__c> franchiseStore {get;set;}
    public FranchiseEmployeeController() {
        workSet = new Set<worker_schedule__c>();
		franchiseStore = new List<worker_schedule__c>();
    }
    public void getWorkers(){
        franchiseStore.clear();
        for(worker_schedule__c work: [SELECT Name, worker__c, franchise__c, dayworked__c FROM worker_schedule__c]){
            if(work.dayworked__c == dat){
               workSet.add(work);
            }
        }
        franchiseStore.addAll(workSet);
    }
}