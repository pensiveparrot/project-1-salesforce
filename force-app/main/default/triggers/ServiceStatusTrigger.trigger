/*trigger ServiceStatusTrigger on customer__c (before update,after update) {
    switch on Trigger.operationType{
        when BEFORE_UPDATE{ServiceStatusTriggerHelper.ServiceStatusTrigger(Trigger.new);}
        when AFTER_UPDATE{ServiceStatusTriggerHelper.ServiceStatusTrigger(Trigger.new);}
    }
}*/