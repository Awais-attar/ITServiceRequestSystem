import { LightningElement, wire } from 'lwc';
import getRequests from '@salesforce/apex/ServiceRequestController.getRequests';

export default class ServiceRequestList extends LightningElement {

    requests;

    @wire(getRequests)
    wiredRequests({ data, error }) {
        if (data) {
            this.requests = data;
        } else if (error) {
            console.error(error);
        }
    }
}