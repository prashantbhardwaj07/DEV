public class PopulateEvent {
	@AuraEnabled(cacheable=true)
    public static List<Custom_Event__c> getEventList() {
        return [SELECT Name, Description__c FROM Custom_Event__c];
    }
}