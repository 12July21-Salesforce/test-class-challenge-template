public class CaseTriggerHandler {
    public static void relateContacts(List<Case> newCases) {
        List<String> contactEmails = new List<String>();
        for(Case c : newCases) {
            if(c.ContactId == null && c.SuppliedEmail != null) {
                contactEmails.add(c.SuppliedEmail);
            }
        }
        
        List<Contact> parentContacts = [SELECT Id, Email FROM Contact WHERE Email in :contactEmails];
        
        Map<String, Id> emailIdMap = new Map<String, Id>();
        for(Contact c : parentContacts) {
            emailIdMap.put(c.Email, c.Id);
        }
        
        for(Case c : newCases) {
            if(c.ContactId == null) {
                c.ContactId = emailIdMap.get(c.SuppliedEmail);
            }
        }
    }
}