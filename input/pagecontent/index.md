
### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Acknowledgement in message based exchange of data in Danish healthcare. A MedCom Acknowledgement message corresponds to a receipt of a delivered message, and is used to keep track of the messages. Every MedCom FHIR message shall be acknowledged with a MedCom Acknowledgement message, as it holds information about how the delivery of the message went.

__Note:__ Be aware that entries in a message in general are unordered. Recipients of a message can therefore not assume any particular sequences of elements.

The following diagram depicts the structure of the Acknowledgement message.

<img alt="MedComMessagingAcknowledgement is the root profile. From this is the MedComMessagingProvenance and MedComMessagingAcknowledgementHeader referenced. The MedComMessagingAcknowledgementHeader includes references to the MedComMasseagingOrganization." src="./MedComMessagingAcknowledgement.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Acknowledgement message follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The following sections describe the overall purpose of each profile.

#### MedComAcknowledgmentMessage

A MedComAcknowledgmentMessage is inherited from MedComMessagingMessage, and constrains the profile since the MessageHeader shall be of the type MedComAcknowledgmentMessageHeader.

#### MedComAcknowledgmentMessageHeader

MedComAcknowledgmentMessageHeader is inherited from MedComMessagingMessageHeader, and constrains the profile as carbon-copy is not allowed and it requires a respones code, which states if the delivery of the message went well or not.

A Message Acknowledgment is required in MedCom FHIR Messaging and follows the recommandations from HL7 FHIR ValueSet [response-code](http://hl7.org/fhir/R4/valueset-response-code.html "response-code").

#### Content

This document presents MedCom messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/hl7dk/dk-medcom-acknowledgement)
* [Wiki](https://github.com/hl7dk/dk-medcom-acknowledgement)
