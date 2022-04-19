public class ucl_Error {
	@AuraEnabled
    public static void SendEmailAndSaveError(String a){
       
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //Support Email Id
        String[] toAddresses = new String[] {'mokuba_iava@hotmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSenderDisplayName('Error Support');
        mail.setSubject('Error in code ');
        String mailBody = ''+ a;
        mail.setPlainTextBody(mailBody);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {
            mail
        });
    }
}