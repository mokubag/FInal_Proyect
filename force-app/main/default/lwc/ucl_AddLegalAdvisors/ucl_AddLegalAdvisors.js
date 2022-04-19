import { LightningElement, wire } from 'lwc';
import makeGetCallout from '@salesforce/apex/ucl_LegalAdvisors.makeGetCallout'; 
import getTotalLegalAdvisors from '@salesforce/apex/ucl_TotalLegal.getTotalLegalAdvisors'; 
import getTotalClients from '@salesforce/apex/ucl_TotalClients.getTotalClients'; 
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Ucl_AddLegalAdvisors extends LightningElement {
    myTitle='Actulizar ';
    TotalLegal= "";
    TotalClientes= "";

     handleclick(){
        makeGetCallout()
        .then(str => this.ShowToast1(str) )
        .catch(error => this.ShowToast1(error));
        //.catch(error => console.log(error ) );
    }
    
     ShowToast1(str)
    {
        if(  str == 'success'){
            this.dispatchEvent(new ShowToastEvent({
                title: 'Update/insert',
                message: 'All legal Advisors and Clients are update/insert',
                variant: 'success'
            }));
        }else{
            this.dispatchEvent(new ShowToastEvent({
                title: 'Update/insert',
                message: 'error',
                variant: 'error'
            }));
        }
          
    }
    


    async handleclick1(){
         this.TotalLegal = await  getTotalLegalAdvisors();
         this.TotalClientes = await  getTotalClients();
    }
    /*get errors() {
        return (makeGetCallout().error) ?
            reduceErrors(makeGetCallout().error) : [];
    }*/
}