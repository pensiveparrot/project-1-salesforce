trigger Franchise on Franchise__c (before delete) {
    List<Id> franchiseList = new List<Id>();
    for(Franchise__c f:Trigger.old){
       franchiseList.add(f.Id);
    }
    List <Worker_Schedule__c> workerlist=[SELECT NAME from Worker_Schedule__c WHERE Franchise__c IN :franchiseList] ;
    delete workerlist;

}