import { LightningElement } from 'lwc';
import createRequest from '@salesforce/apex/ServiceRequestController.createRequest';

export default class ServiceRequestForm extends LightningElement {

    subject = '';
    description = '';
    message = '';

    handleSubjectChange(event) {
        this.subject = event.target.value;
    }

    handleDescriptionChange(event) {
        this.description = event.target.value;
    }

    handleSubmit() {
        createRequest({
            subject: this.subject,
            description: this.description
        })
        .then(() => {
            this.message = 'Service Request submitted successfully!';

            this.subject = '';
            this.description = '';
        })
        .catch(error => {
            this.message = 'Error submitting Service Request.';
            console.error(error);
        });
    }
}