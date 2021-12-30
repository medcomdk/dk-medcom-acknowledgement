
### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Acknowledgement in message based exchange of data in Danish healthcare. A MedCom Acknowledgement message corresponds to a receipt of a delivered message, why it is crucial to keep track of the messages. Every MedCom FHIR message must be acknowledged with a MedCom Acknowledgement message, as it holds information about how the delivery of the message went.

The profiles are in general made open for additional content to allow further profiling for specific purposes defined by the communicating parties.

__Note:__ Be aware that entries in a message in general are unordered. Recipients of a message can therefore not assume any particular sequences of elements.


### MedCom Acknowledgment Message

#### MedComAcknowledgmentMessage

A Message Acknowledgment is required in MedCom FHIR Messaging and follows the recommandations from HL7 FHIR ValueSet [response-code](http://hl7.org/fhir/R4/valueset-response-code.html "response-code").

#### MedComAcknowledgmentMessageHeader

Message Acknowledgment is handled through the response element in the MedComAcknowledgmentMessageHeader.

#### Content

This document presents MedCom messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/hl7dk/dk-medcom-acknowledgement)
* [Wiki](https://github.com/hl7dk/dk-medcom-acknowledgement)
