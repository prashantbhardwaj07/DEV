import { LightningElement, track, api, wire } from 'lwc';
import retrieveContactRecords from '@salesforce/apex/ContactDetails.retrieveContactRecords';
 
export default class ParentCmpLwc extends LightningElement {
      
    @api recordId;
    @track records;
    @track errorMsg;    
 
   @wire(retrieveContactRecords,{ accId: '$recordId'}) 
    contactData({ data, error }) {
        if (data) {
            this.records = data;
            this.errorMsg = undefined;
        } else if(error){
            this.errorMsg = error;
            this.records = undefined;
        }
    }
}