trigger UpdateAccountTrigger on UpdateAccount__e (after insert) {
    List<Custom_Event__c> evtList = new List<Custom_Event__c>();
    for (UpdateAccount__e event : Trigger.New) { 
    	Custom_Event__c evt = new Custom_Event__c();
        evt.Name = event.Name__c;
        evt.Description__c = event.Description__c;
        evtList.add(evt);
    }
    insert evtList;
}