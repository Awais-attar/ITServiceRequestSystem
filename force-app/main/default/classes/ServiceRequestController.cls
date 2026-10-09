public with sharing class ServiceRequestController {

    @AuraEnabled
    public static void createRequest(String subject, String description) {

        Service_Request__c request = new Service_Request__c();

        request.Subject__c = subject;
        request.Description__c = description;

        insert request;
    }

    @AuraEnabled(cacheable=true)
    public static List<Service_Request__c> getRequests() {

        return [
            SELECT Id,
                   Name,
                   Subject__c,
                   Description__c,
                   Status__c,
                   Response_Resolution__c,
                   Employee__r.Name,
                   IT_Support_Member__r.Name
            FROM Service_Request__c
            ORDER BY CreatedDate DESC
        ];
    }
}