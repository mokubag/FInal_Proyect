public class ucl_TotalLegal {
@AuraEnabled
    public  static integer  getTotalLegalAdvisors(){
        integer Total;
        List<Legal_Advisor__c> listaLegalAdvisorOrg = [SELECT Id,Account_Number__c,Account_Name__c,As_of_Date__c,Name FROM Legal_Advisor__c ];
        Total = listaLegalAdvisorOrg.size();
        return Total;
    }
}