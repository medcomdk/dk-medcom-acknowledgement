### Scope and usage 
This profile is used as the MessageHeader resource for the MedCom Acknowledgement message. 
Constraint and rules from MedComMessagingMessageHeader is inherited to this profile. However, does MedComAcknowledgementMessageHeader not allow for a receiver of the type carbon-copy and the profile requires a response code. This code includes information about the delivery of a message e.g., if the message was delivered without error it would resolve in response code 'ok'.   

Below can the structure of a MedCom AcknowledgementMessageHeader be seen.

<img alt="The MedComAcknowledgementMessageHeader includes references to the MedComMessagingOrganization. Additionally, it is possible to include an OperationOutCome profile, referenced from MedComAcknowledgementMessageHeader." src="./AcknowledgementMessageHeader.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComAcknowledgementMessageHeader.

### Respons code

A MedComAcknowledgementMessageHeader is required in MedCom FHIR Messaging and follows the recommandations from HL7 FHIR ValueSet [response-code](http://hl7.org/fhir/R4/valueset-response-code.html "response-code") 

The codes here are equivalent to HL7 v3.Acknowledgement as described in the table below.

HL7 FHIR Code | HL7 FHIR Code Display | HL7 FHIR Definition | HL7 v3 Code | HL7 v3 Code Display | HL7 v3 Definition
----------------- | ------------------------  | ---------------------- | -------------- | ------------- | -------------
ok | OK | The message was accepted and processed without error. | AA | Application Acknowledgement Accept | Receiving application successfully processed message.
fatal-error | Fatal Error | The message was rejected because of a problem with the content. There is no point in re-sending without change. The response narrative SHALL describe the issue. | AE | Application Acknowledgement Error | Receiving application found error in processing message. Sending error response with additional error detail information.
transient-error | Transient Error | Some internal unexpected error occurred - wait and try again. Note - this is usually used for things like database unavailable, which may be expected to resolve, though human intervention may be required. | AR | Application Acknowledgement Reject | Receiving application failed to process message for reason unrelated to content or format. Original message sender must decide on whether to automatically send message again.

Please go to this definition of [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html#resource) to get informed how and when to use if the code response is different from "OK".
