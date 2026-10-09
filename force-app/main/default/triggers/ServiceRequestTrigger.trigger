// Automatically assigns a support member to new service requests
trigger ServiceRequestTrigger on Service_Request__c (before insert) {

    List<IT_Support_Member__c> supportMembers = [
        SELECT Id
        FROM IT_Support_Member__c
        LIMIT 1
    ];

    if (!supportMembers.isEmpty()) {

        for (Service_Request__c request : Trigger.new) {

            request.IT_Support_Member__c = supportMembers[0].Id;
            request.Status__c = 'Assigned';

        }
    }
}