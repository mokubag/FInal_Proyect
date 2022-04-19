public class ucl_Error {
	@AuraEnabled
    public static void SendEmailAndSaveError(String a){
        Error__c b = new Error__c();
        b.Nombre_del_error__c = a;
        insert b;
       /* Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //Support Email Id
        String[] toAddresses = new String[] {'juan.galvan@fing.edu.uy'};
        mail.setToAddresses(toAddresses);
        mail.setSenderDisplayName('Error Support');
        mail.setSubject('Error in code ');
        String mailBody = ''+ 'hola';
        mail.setPlainTextBody(mailBody);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {
            mail
        });*/
    }
}