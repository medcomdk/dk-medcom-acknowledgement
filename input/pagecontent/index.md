
### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Acknowledgement in message based exchange of data in Danish healthcare. 

A MedCom Acknowledgement message (Danish: Kvittering) corresponds to a receipt of a delivered message. Every time a system receives a MedCom FHIR message, e.g. a [HospitalNotification](https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/) or a [CareCommunication](https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/), it shall be acknowledged with a MedCom Acknowledgement message, stating if the transfer was successful and the message validated correctly or not. In other word, does a MedCom Acknowledgement message hold information about how delivery of a message went. MedCom FHIR messaging complies with [reliable messaging and associated governance](https://medcomdk.github.io/MedCom-FHIR-Communication/#network-layer), which describes the value and needs of acknowledge all messages. 

#### Acknowlegdement message

The following diagram depicts the structure of the Acknowledgement message.

<img alt="MedComAcknowledgementMessage is the root profile. From this is the MedComMessagingProvenance and MedComAcknowledgementMessageHeader referenced. The MedComAcknowledgementMessageHeader includes references to the MedComMessagingOrganization. Additionally, it is possible to include an OperationOutCome profile, referenced from MedComAcknowledgementMessageHeader." src="./MedComAcknowledgementMessage.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Acknowledgement message follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The following sections describe the overall purpose of each profile.

#### MedComAcknowledgmentMessage

A [MedComAcknowledgmentMessage](https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html) is inherited from [MedComMessagingMessage](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-message.html), and constrains the profile since the MessageHeader shall be of the type MedComAcknowledgmentMessageHeader.

#### MedComAcknowledgmentMessageHeader

[MedComAcknowledgmentMessageHeader](https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html) is inherited from [MedComMessagingMessageHeader](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-messageHeader.html), and constrains the profile as carbon-copy is not allowed and it requires a respones code, which states if the delivery of the message went well or not.

An Acknowledgment message is required in MedCom FHIR Messaging and follows the recommandations from HL7 FHIR ValueSet [response-code](http://hl7.org/fhir/R4/valueset-response-code.html). 

#### MedComAcknowledgmentOperationOutcome

[MedComAcknowledgmentOperationOutcome](https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-acknowledgement-operationoutcome.html) shall be included in the bundle when the MessageHeader.response.code is different from 'ok'. Further, an OperationOutcome resource may be included when the MessageHeader.response.code is 'ok', e.g. in cases where the received message is valid, but it is a dublet. OperationOutcome contains a description of the error and the severity of the error.

The ValueSet [MedComAcknowledgementIssueDetailValues](https://build.fhir.org/ig/medcomdk/dk-medcom-terminology//ValueSet-medcom-acknowledgement-issue-details.html) attached to the element OperationOutcome.response.detail.coding is used to describe the issue more detailed. Currently, the ValueSet is fairly empty, as MedCom wants input from IT-vendors on which codes give values in their systems. Across sectors there must be an agreed list of codes.

#### Timestamps 

The Acknowledgement message contains three timestamps:

* Bundle.timestamp
* Provenance.occuredDateTime[x]
* Provenance.recorded.

The three timestamps are registered at different time during Acknowledgement message generation and sending. The Acknowledgement message is sent when a system receives a FHIR message e.g. when a municipality receives a HospitalNotification message from the hospital, the it-system will evaluate the message. Based on the result from the evaluation, the system will generate an acknowlegement message that represet the evaluation results. This means that if the HospitalNotification is evaluated positive the acknowlegdement is as well positive. Whereas if the HospitalNotification is evaluated negative then a negative Acknowledgement is generated and send. When the acknowledgement message is generated a Bundle.timestamp is registered. When the acknowledgement message is sent the Provenance.occuredDateTime[x] and Provenance.recorded time stamp is registered. Note that the Provenance.occuredDateTime[x] is a human redable, where Provenance.recorded is a system readable.

#### Simplified examples of the Acknowledgement messages

The simplified examples contain the required content of an Acknowledgement message. The messages illustrate an OK response and a fatal-error response based on a received message. The illustrations shows that two provenance resouces are included when sending an Acknowledgement message, one for the messages the is being acknowledged and one for the Acknowledgement message. 

All profiles shall have a global unique id by using an UUID. [Read more about the use of ids here](https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/052.2_MessageHeader_Identifiers_Timestamps.html).

[More examples of a Acknowledgement message can be found here](https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement-examples.html). For examples of a profile, take a look under the tab 'Examples' on the site for the given profile.

> Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, resources may be listed in any order. 

* [Simplified example of a MedComAcknowledgementMessage responding with OK](./AcknowledgementOK.svg)
* [Simplified example of a MedComHospitalNotificationMessage responding with fatal-error.](./AcknowledgementError.svg)


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
