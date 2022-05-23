@isTest 
public class ucl_LegalAdvisorCalloutsTest {
@isTest 
static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new ucl_LegalAvisorHttpCalloutMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    String response = ucl_LegalAdvisors.makeGetCallout();
    // Verify that the response received contains fake values
   
    String expectedValue = '[{"AccountNumber": "651cbb19-dbcd-4978-99f5-71b235429d28","AccountName": "Oyoloo","AccountStatus": "Enabled",'
     +'"AsOfDate": "8/9/2019",' 
    +'"Clients": [{"FirstName": "Hendrika","LastName": "Smiley", "Email": "hsmiley0@nymag.com","Phone": "458-166-2166",'
     + '"Address": "47277 Browning Circle",'
      +'"ClientNumber": "c20e6ac3-61ee-48fc-a523-ee97c6e20bae"'
      + '},{"FirstName": "Pamella","LastName": "Briddle","Email": "pbriddle1@desdev.cn","Phone": "443-361-0895","Address": "016 Dorton Court",'
      + '"ClientNumber": "78270901-768d-4c99-a72a-18dfde5839f1" }]'
 +  '},{"AccountNumber": "d5fb601e-a697-4b4e-b88a-2d8adc1639e0","AccountName": "Yabox","AccountStatus": "Disabled","AsOfDate": "3/21/2019",'
 +  '"Clients": [{"FirstName": "Konstantin","LastName": "Grinham","Email": "kgrinham0@dagondesign.com","Phone": "384-281-5985",'
    +    '"Address": "0 Raven Way","ClientNumber": "fd59a784-d763-4679-96a2-a9696b064762"},{'
    +    '"FirstName": "Phillie","LastName": "Sivyer","Email": "psivyer1@pagesperso-orange.fr","Phone": "188-835-2178","Address": "6 Kings Alley",'
     +   '"ClientNumber": "19b69131-9216-4545-a096-138b62c14e14"},{"FirstName": "Muffinera","LastName": "Frickey",'
     +   '"Email": "mfrickey2@buzzfeed.com","Phone": "336-549-6545", "Address": "72927 Eggendart Place", "ClientNumber": "b38e083e-8051-4392-b40e-7ed92b132132"'
 +'},{"FirstName": "Sigismondo","LastName": "Sorrell","Email": "ssorrell3@gov.uk","Phone": "206-780-1348","Address": "7200 Tennessee Terrace",'
    +    '"ClientNumber": "ffcef15a-2911-40d8-92ce-9a117a286e3a"},{"FirstName": "Eirena","LastName": "Maven","Email": "emaven4@answers.com",'
     +   '"Phone": "601-269-4251","Address": "4 7th Road","ClientNumber": "fc86db47-ce03-46b1-a674-2d7ac9711d46"},{'
    +    '"FirstName": "Kane","LastName": "Dearl","Email": "kdearl5@chicagotribune.com","Phone": "824-262-8668","Address": "305 Katie Center",'
    +    '"ClientNumber": "57acde02-1118-4470-bf0a-ce70467e9d5e"},{"FirstName": "Codie","LastName": "Wyon","Email": "cwyon6@reference.com",'
     +   '"Phone": "474-767-0935","Address": "1977 Ohio Street","ClientNumber": "782a27c2-f719-4709-b523-457b93515ff7"},{'
     +   '"FirstName": "Diana","LastName": "Ewins","Email": "dewins7@scribd.com",'
     +   '"Phone": "631-735-4221", "Address": "860 Eagle Crest Park","ClientNumber": "ea655de5-2f55-4036-85cd-6004f95f1b46"}]} ]  );';
    
    System.assertEquals('success', response);
}
@isTest 
    static void testPostCallout2() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new ucl_LegalAvisorHttpCalloutMock2()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    String response = ucl_LegalAdvisors.makeGetCallout();
    // Verify that the response received contains fake values
   
    String expectedValue = '[{"AccountNumber": "651cbb19-dbcd-4978-99f5-71b235429d28","AccountName": "Oyoloo","AccountStatus": "Enabled",'
     +'"AsOfDate": "8/9/2019",' 
    +'"Clients": [{"FirstName": "Hendrika","LastName": "Smiley", "Email": "hsmiley0@nymag.com","Phone": "458-166-2166",'
     + '"Address": "47277 Browning Circle",'
      +'"ClientNumber": "c20e6ac3-61ee-48fc-a523-ee97c6e20bae"'
      + '},{"FirstName": "Pamella","LastName": "Briddle","Email": "pbriddle1@desdev.cn","Phone": "443-361-0895","Address": "016 Dorton Court",'
      + '"ClientNumber": "78270901-768d-4c99-a72a-18dfde5839f1" }]'
 +  '},{"AccountNumber": "d5fb601e-a697-4b4e-b88a-2d8adc1639e0","AccountName": "Yabox","AccountStatus": "Disabled","AsOfDate": "3/21/2019",'
 +  '"Clients": [{"FirstName": "Konstantin","LastName": "Grinham","Email": "kgrinham0@dagondesign.com","Phone": "384-281-5985",'
    +    '"Address": "0 Raven Way","ClientNumber": "fd59a784-d763-4679-96a2-a9696b064762"},{'
    +    '"FirstName": "Phillie","LastName": "Sivyer","Email": "psivyer1@pagesperso-orange.fr","Phone": "188-835-2178","Address": "6 Kings Alley",'
     +   '"ClientNumber": "19b69131-9216-4545-a096-138b62c14e14"},{"FirstName": "Muffinera","LastName": "Frickey",'
     +   '"Email": "mfrickey2@buzzfeed.com","Phone": "336-549-6545", "Address": "72927 Eggendart Place", "ClientNumber": "b38e083e-8051-4392-b40e-7ed92b132132"'
 +'},{"FirstName": "Sigismondo","LastName": "Sorrell","Email": "ssorrell3@gov.uk","Phone": "206-780-1348","Address": "7200 Tennessee Terrace",'
    +    '"ClientNumber": "ffcef15a-2911-40d8-92ce-9a117a286e3a"},{"FirstName": "Eirena","LastName": "Maven","Email": "emaven4@answers.com",'
     +   '"Phone": "601-269-4251","Address": "4 7th Road","ClientNumber": "fc86db47-ce03-46b1-a674-2d7ac9711d46"},{'
    +    '"FirstName": "Kane","LastName": "Dearl","Email": "kdearl5@chicagotribune.com","Phone": "824-262-8668","Address": "305 Katie Center",'
    +    '"ClientNumber": "57acde02-1118-4470-bf0a-ce70467e9d5e"},{"FirstName": "Codie","LastName": "Wyon","Email": "cwyon6@reference.com",'
     +   '"Phone": "474-767-0935","Address": "1977 Ohio Street","ClientNumber": "782a27c2-f719-4709-b523-457b93515ff7"},{'
     +   '"FirstName": "Diana","LastName": "Ewins","Email": "dewins7@scribd.com",'
     +   '"Phone": "631-735-4221", "Address": "860 Eagle Crest Park","ClientNumber": "ea655de5-2f55-4036-85cd-6004f95f1b46"}]} ]  );';
    
   // System.assertEquals(null, response);
}
    
    @isTest 
static void testPostCallout3() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new ucl_LegalAvisorHttpCalloutMock3()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    String response = ucl_LegalAdvisors.makeGetCallout();
    // Verify that the response received contains fake values
   
    String expectedValue = '[{"AccountNumber": "651cbb19-dbcd-4978-99f5-71b235429d28","AccountName": "Oyoloo","AccountStatus": "Enabled",'
     +'"AsOfDate": "8/9/2019",' 
    +'"Clients": [{"FirstName": "Hendrika","LastName": "Smiley", "Email": "hsmiley0@nymag.com","Phone": "458-166-2166",'
     + '"Address": "47277 Browning Circle",'
      +'"ClientNumber": "c20e6ac3-61ee-48fc-a523-ee97c6e20bae"'
      + '},{"FirstName": "Pamella","LastName": "Briddle","Email": "pbriddle1@desdev.cn","Phone": "443-361-0895","Address": "016 Dorton Court",'
      + '"ClientNumber": "78270901-768d-4c99-a72a-18dfde5839f1" }]'
 +  '},{"AccountNumber": "d5fb601e-a697-4b4e-b88a-2d8adc1639e0","AccountName": "Yabox","AccountStatus": "Disabled","AsOfDate": "3/21/2019",'
 +  '"Clients": [{"FirstName": "Konstantin","LastName": "Grinham","Email": "kgrinham0@dagondesign.com","Phone": "384-281-5985",'
    +    '"Address": "0 Raven Way","ClientNumber": "fd59a784-d763-4679-96a2-a9696b064762"},{'
    +    '"FirstName": "Phillie","LastName": "Sivyer","Email": "psivyer1@pagesperso-orange.fr","Phone": "188-835-2178","Address": "6 Kings Alley",'
     +   '"ClientNumber": "19b69131-9216-4545-a096-138b62c14e14"},{"FirstName": "Muffinera","LastName": "Frickey",'
     +   '"Email": "mfrickey2@buzzfeed.com","Phone": "336-549-6545", "Address": "72927 Eggendart Place", "ClientNumber": "b38e083e-8051-4392-b40e-7ed92b132132"'
 +'},{"FirstName": "Sigismondo","LastName": "Sorrell","Email": "ssorrell3@gov.uk","Phone": "206-780-1348","Address": "7200 Tennessee Terrace",'
    +    '"ClientNumber": "ffcef15a-2911-40d8-92ce-9a117a286e3a"},{"FirstName": "Eirena","LastName": "Maven","Email": "emaven4@answers.com",'
     +   '"Phone": "601-269-4251","Address": "4 7th Road","ClientNumber": "fc86db47-ce03-46b1-a674-2d7ac9711d46"},{'
    +    '"FirstName": "Kane","LastName": "Dearl","Email": "kdearl5@chicagotribune.com","Phone": "824-262-8668","Address": "305 Katie Center",'
    +    '"ClientNumber": "57acde02-1118-4470-bf0a-ce70467e9d5e"},{"FirstName": "Codie","LastName": "Wyon","Email": "cwyon6@reference.com",'
     +   '"Phone": "474-767-0935","Address": "1977 Ohio Street","ClientNumber": "782a27c2-f719-4709-b523-457b93515ff7"},{'
     +   '"FirstName": "Diana","LastName": "Ewins","Email": "dewins7@scribd.com",'
     +   '"Phone": "631-735-4221", "Address": "860 Eagle Crest Park","ClientNumber": "ea655de5-2f55-4036-85cd-6004f95f1b46"}]} ]  );';
    
    System.assertEquals('success', response);
}
    
    @isTest 
    static void testTotalLA() {
        ucl_TotalClients.getTotalClients();
    }
    @isTest 
    static void testTotalC() {
        ucl_TotalLegal.getTotalLegalAdvisors();
    }
    @isTest 
    static void testInsertAndUpdateData() {
        ucl_InsertAndUpdateData dataHeroku = new ucl_InsertAndUpdateData();
		String sch = '0 0 19 * * ?';
		String jobID = system.schedule('dataHeroku Job', sch, dataHeroku);
    }
    @isTest 
    static void testUclErrror() {
        ucl_Error.SendEmailAndSaveError('hola');
    }
    @isTest 
    static void testInsertUpdateDiario() {
        ucl_LegalAdvisors.AcutualisacionNocturna();
    }
}