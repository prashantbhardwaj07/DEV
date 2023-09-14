import { LightningElement, wire } from 'lwc';
import getEventList from '@salesforce/apex/PopulateEvent.getEventList';
  
export default class AccountListLWC extends LightningElement {
    @wire(getEventList) events;
}