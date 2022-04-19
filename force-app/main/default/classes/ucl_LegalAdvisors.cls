public class ucl_LegalAdvisors {
//@future(callout=true) 
@AuraEnabled
public static string  makeGetCallout() {
string respuesta;    
    try {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('bootcamp.herokuapp.com/LegalAccounts');
        request.setMethod('GET');           
        HttpResponse response = http.send(request);
        
            if(response.getStatusCode() == 200) {
                    List< Object> results = (List< Object>) JSON.deserializeUntyped(response.getBody());
                    List<Legal_Advisor__c> listaLegalAdvisor = new List<Legal_Advisor__c>();
                    List<Legal_Advisor__c> listaLegalAdvisorDisable = new List<Legal_Advisor__c>();
                    List<Client__c> listaClientes = new List<Client__c>();
                    Legal_Advisor__c Advisorkey = new Legal_Advisor__c();
                    Client__c Clientkey = new Client__c();    
            			for (Object iterLegalAdvisor : results) {
                            Map<String, Object> legalAdvisorMap = (Map<String, Object>) iterLegalAdvisor;
                            Legal_Advisor__c l = new Legal_Advisor__c();
                              if( (String) legalAdvisorMap.get('AccountStatus') == 'Enabled'){   
                                    l.Account_Name__c = (String) legalAdvisorMap.get('AccountName');
                                    l.Account_Number__c = (String) legalAdvisorMap.get('AccountNumber');
                                    l.As_of_Date__c = Date.parse((string)legalAdvisorMap.get('AsOfDate')) ;
                                    l.Account_Status__c = (String) legalAdvisorMap.get('AccountStatus');
                                    l.Name = (String) legalAdvisorMap.get('AccountName');
                                    //List<Object> clientes = (List<Object>)legalAdvisorMap.get('Clients');
                                    listaLegalAdvisor.add(l);
                                }else {
                                    Legal_Advisor__c m = new Legal_Advisor__c();
                                    m.Account_Name__c = (String) legalAdvisorMap.get('AccountName');
                                    m.Account_Number__c = (String) legalAdvisorMap.get('AccountNumber');
                                    m.As_of_Date__c = Date.parse((string)legalAdvisorMap.get('AsOfDate'));
                                    m.Account_Status__c = (String) legalAdvisorMap.get('AccountStatus');        
                                    listaLegalAdvisorDisable.add(m);
                                }      
                        }
                upsert listaLegalAdvisor Advisorkey.Account_Number__c;
                List<Legal_Advisor__c> listaLegalAdvisorOrg = [SELECT Id,Account_Number__c,Account_Name__c,As_of_Date__c,Name FROM Legal_Advisor__c ];
                List<Legal_Advisor__c> listaLegalActualizar = new List<Legal_Advisor__c>();  
                for (Object iterLegalAdvisor : results) {
                            Map<String, Object> legalAdvisorMap = (Map<String, Object>) iterLegalAdvisor;
                          Legal_Advisor__c p = new Legal_Advisor__c();
                              if( (String) legalAdvisorMap.get('AccountStatus') == 'Disabled'){ 
                                    for (Legal_Advisor__c iterLegalAdvisorEnOrg : listaLegalAdvisorOrg) {
                                        if((String) legalAdvisorMap.get('AccountNumber') == iterLegalAdvisorEnOrg.Account_Number__c ){
                                            Legal_Advisor__c n = new Legal_Advisor__c();
                                            n.Account_Name__c = (String) legalAdvisorMap.get('AccountName');
                                            n.Account_Number__c = (String) legalAdvisorMap.get('AccountNumber');
                                            n.As_of_Date__c = Date.parse((string)legalAdvisorMap.get('AsOfDate'));
                                            n.Account_Status__c = (String) legalAdvisorMap.get('AccountStatus'); 
                                            listaLegalActualizar.add(n);
                                            //agrego los clientes del leaglAdvisor disable
                                            List<Object> clientes = (List<Object>)legalAdvisorMap.get('Clients');
                                    		for (Object iterLegalClient : clientes) {
                                                Map<String, Object> clienteMap = (Map<String, Object>) iterLegalClient;
                                                Client__c c = new Client__c();
                                                c.First_Name__c = (String) clienteMap.get('FirstName');
                                                c.Last_Name__c = (String) clienteMap.get('LastName');
                                                c.Cliente_Nuevo__c = 'Si';
                                                c.Email__c = (String) clienteMap.get('Email');
                                                c.Client_Number__c = (String) clienteMap.get('ClientNumber');
                                                c.Client_Account_Number__c=(String) legalAdvisorMap.get('AccountNumber')+ (String) clienteMap.get('ClientNumber');
                                                c.Legal_Advisor__c =iterLegalAdvisorEnOrg.Id;
                                                     
                                                   
                                                listaClientes.add(c);
                                     		}
                                        }
                                    }    
                                    
                                }else{
                                    List<Object> clientes = (List<Object>)legalAdvisorMap.get('Clients');
                                    for (Object iterLegalClient : clientes) {
                                            Map<String, Object> clienteMap = (Map<String, Object>) iterLegalClient;
                                            Client__c c = new Client__c();
                                            c.First_Name__c = (String) clienteMap.get('FirstName');
                                            c.Last_Name__c = (String) clienteMap.get('LastName');
                                        	c.Cliente_Nuevo__c = 'Si';
                                            c.Email__c = (String) clienteMap.get('Email');
                                            c.Client_Number__c = (String) clienteMap.get('ClientNumber');
                                        	c.Client_Account_Number__c=(String) legalAdvisorMap.get('AccountNumber')+ (String) clienteMap.get('ClientNumber');
                                            for (Legal_Advisor__c iterLegalAdvisorEnOrg : listaLegalAdvisorOrg) {
                                             if((String) legalAdvisorMap.get('AccountNumber') == iterLegalAdvisorEnOrg.Account_Number__c ){
                                                 c.Legal_Advisor__c =iterLegalAdvisorEnOrg.Id;
                                                 }
                                            }    
                                            listaClientes.add(c);
                                     }    
                                }
            }            
        	upsert listaLegalActualizar Advisorkey.Account_Number__c;
            upsert listaClientes Clientkey.Client_Account_Number__c;
             
                
            List<Client__c> listaClientesBorrar = [SELECT Id,Cliente_Nuevo__c,Client_Account_Number__c FROM Client__c WHERE Cliente_Nuevo__c = 'No' ];
			delete listaClientesBorrar;    
            	List<Client__c> listaClientesViejos = [SELECT Id,Cliente_Nuevo__c,Client_Account_Number__c FROM Client__c ];
				List<Client__c> listaClientesActual = new List<Client__c>();
					for(Client__c iter :listaClientesViejos){
                        Client__c c = new Client__c();
                        c.Cliente_Nuevo__c = 'No';
                        c.Client_Account_Number__c= iter.Client_Account_Number__c;
						listaClientesActual.add(c);
					}
				upsert listaClientesActual c.Client_Account_Number__c;
                respuesta= 'success';
            }
            return  respuesta;
    }catch (Exception e) {
        Error__c b = new Error__c();
        b.Nombre_del_error__c =e.getTypeName();
        insert b;
        return b.Nombre_del_error__c;
        //throw new AuraHandledException(e.getMessage()); 
	} 
       
}
    //funcion para llamar en el lwc
    @future(callout=true) 
    public static void AcutualisacionNocturna(){
        makeGetCallout();
    }

}