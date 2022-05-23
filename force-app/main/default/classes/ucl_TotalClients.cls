public class ucl_TotalClients {
	@AuraEnabled
    public  static integer  getTotalClients(){
        integer Total;
        List<Client__c> listaClientes = [SELECT Id,Cliente_Nuevo__c,Client_Account_Number__c FROM Client__c  ];
        Total = listaClientes.size();
        //System.debug(Total);
        return Total;
    }
}