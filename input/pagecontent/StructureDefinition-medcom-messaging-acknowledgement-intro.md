### Scope and usage 
This profile is the root profile of MedCom Acknowledgement message, which corresponds to a receipt of the message delivery. Constraint and rules from MedComMessagingMessageHeader is inherited to this profile. Below can the structure of a MedCom Acknowledgement message be seen.

<img alt="MedComMessagingAcknowledgement is the root profile. From this is the MedComMessagingProvenance and MedComMessagingAcknowledgementHeader referenced. The MedComMessagingAcknowledgementHeader includes references to the MedComMasseagingOrganization." src="./MedComMessagingAcknowledgement.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

A Message Acknowledgment is required in MedCom FHIR Messaging and follows the recommandations from HL7 FHIR ValueSet [response-code](http://hl7.org/fhir/R4/valueset-response-code.html "response-code").

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComMessagingAcknowledgement.
