### Scope and usage 
This profile is called MedComAcknowledgementOperationOutcome and is used to give a detailed describtion of errors occuring when exchanging FHIR messages. Succes or fail in message exchange can be found in the element MessageHeader.response.code. 
MedComAcknowledgementOperationOutcome can be seen as a help for IT-vendors to identify potential errors in their systems, as it least shall contain a description of the issue, including a severity and an error or warning code. It may include several issues. 

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComAcknowledgementMessage.

#### When to include an OperationOutcome

MedComAcknowledgementOperationOutcome should not be included when the message exchange goes well, corresponding to the value 'ok' in MessageHeader.response.code. However, may be included when the MessageHeader.response.code is 'ok', e.g. in cases where the received message is valid, but it is a dublet of a previous sent message. In this case an OperationOutcome with a value of OperationOutcome.issue.severity 'information' and a relevant code could be included. 
An OperationOutcome resource shall be included when the element MessageHeader.response.code is different from 'ok'.  

#### OperationOutCome.issue.details.coding

The CodeSystem [MedComAcknowledgementIssueDetails](http://medcomfhir.dk/ig/terminology/CodeSystem-medcom-acknowledgement-issue-details.html)and ValueSet[MedComAcknowledgementIssueDetailValues](http://medcomfhir.dk/ig/terminology/ValueSet-medcom-acknowledgement-issue-details.html) used in the element OperationOutCome.issue.details.coding are used to describe the issue of receiving a message more detailed. Currently, the two terminologies are fairly empty, as MedCom wants input from IT-vendors on which issue codes provide value in IT-systems. Across sectors there must be an agreed list of codes. Therefore, the ValueSet has a status as 'draft' and vendors should expect the CodeSystem and ValueSet to be extended. [For relevant input regarding the issue codes, please contact MedCom](http://medcomfhir.dk/ig/acknowledgement/#contact).

