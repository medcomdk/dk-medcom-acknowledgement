### Scope and usage 
This profile is called MedComAcknowledgementOperationOutcome and is used to give a detailed describtion of errors occuring when exchanging FHIR messages. Succes or fail in message exchange can be found in the element MessageHeader.response.code. MedComAcknowledgementOperationOutcome should not be included when the message exchange goes well, corresponding to the value 'ok' in MessageHeader.response.code. However, it shall be used when the element MessageHeader.response.code is different from 'ok'. 

MedComAcknowledgementOperationOutcome is included as a help for IT-vendors to identify potential errors in their systems. 

An MedComAcknowledgementOperationOutcome shall always at least contain one description of the issue, including a severity and an error or warning code. It may include several issues.  

#### OperationOutCome.issue.details.coding

The ValueSet used in the element OperationOutCome.issue.details.coding is used to describe the issue more detailed. Currently, the ValueSet is fairly empty, as MedCom wants input from IT-vendors on which codes give values in their systems. Across sectors there must be an agreed list of codes. 

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComAcknowledgementMessage.
