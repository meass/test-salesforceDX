public with sharing class ContactController {
   
	@AuraEnabled
    public static List<Contact> getContacts() {
        List<Contact> contacts = [SELECT Id, Name, MailingStreet, Phone, Email, Leadsource FROM Contact];
            
        //Add isAccessible() check
        return contacts;
        // 1st change from Dev1
    }
}