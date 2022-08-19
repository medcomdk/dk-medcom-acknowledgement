
### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Acknowledgement in message based exchange of data in Danish healthcare. 

A MedCom Acknowledgement message (Danish: Kvittering) corresponds to a receipt of a delivered message. Every MedCom FHIR message shall be acknowledged with a MedCom Acknowledgement message, as it holds information about how delivery of the message went.

#### Acknowlegdement message

The following diagram depicts the structure of the Acknowledgement message.

<img alt="MedComAcknowledgementMessage is the root profile. From this is the MedComMessagingProvenance and MedComAcknowledgementMessageHeader referenced. The MedComAcknowledgementMessageHeader includes references to the MedComMessagingOrganization. Additionally, it is possible to include an OperationOutCome profile, referenced from MedComAcknowledgementMessageHeader." src="./MedComAcknowledgementMessage.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Acknowledgement message follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The following sections describe the overall purpose of each profile.

#### MedComAcknowledgmentMessage

A [MedComAcknowledgmentMessage](https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html) is inherited from [MedComMessagingMessage](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-message.html), and constrains the profile since the MessageHeader shall be of the type MedComAcknowledgmentMessageHeader.

#### MedComAcknowledgmentMessageHeader

[MedComAcknowledgmentMessageHeader](https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html) is inherited from [MedComMessagingMessageHeader](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-messageHeader.html), and constrains the profile as carbon-copy is not allowed and it requires a respones code, which states if the delivery of the message went well or not.

An Acknowledgment message is required in MedCom FHIR Messaging and follows the recommandations from HL7 FHIR ValueSet [response-code](http://hl7.org/fhir/R4/valueset-response-code.html). Further it is allowed to include an OperationOutcome resource, to describe an error-message.

#### Terminology
On [MedCom Terminology IG](https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to the [MedCom Core IG](https://build.fhir.org/ig/medcomdk/dk-medcom-core/), [MedCom Messaging IG](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/) and [DK-core v. 1.1.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). This is currently reflected in the profiles MedComAcknowledgementMessage, and MedComAcknowledgementMessageHeader which both inherits from profiles defined in MedCom Messaging IG. 

### Documentation

On the [introduction page for Acknowledgement](https://medcomdk.github.io/dk-medcom-acknowledgement/) an introduction and use cases can be found.

### Governance

MedComs FHIR profiles and extension are managed in GitHub under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-acknowledgement)

A description of [governance concerning change management and versioning](https://medcomdk.github.io/MedComLandingPage/#4-change-managment-and-versioning) of MedComs FHIR artefacts, can be found on the link.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile in the element is not included in the Bundle in an instance, since the instance only represents a part of the entire message. This will not influence the implementation by IT-vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
