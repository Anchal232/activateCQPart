trigger partTriggerAnchal on compliancequest__SQX_Part__c (after insert,after update) {
    if(Trigger.isInsert && Trigger.isAfter){
        System.debug('ab');
        partTriggerHelperAnchal.createTask(Trigger.new);       
    }
    if(Trigger.isUpdate && Trigger.isAfter){
        partTriggerHelperAnchal.updateTaskStatus(Trigger.new);
    }
}