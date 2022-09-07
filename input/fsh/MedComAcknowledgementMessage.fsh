Profile: MedComAcknowledgementMessage
Parent: MedComMessagingMessage
Id: medcom-messaging-acknowledgement
Description: "Base resource for all MedCom Acknowledgement messages."
* obeys medcom-messaging-3
* obeys medcom-messaging-4
* entry ^short = "Message content (MedComAcknowledgementMessageHeader, MedComMessagingProvenance, MedComMessagingOrganization) - Open"
* obeys medcom-acknowledgement-1

Invariant: medcom-acknowledgement-1
Description: "If the response.code is different than 'ok', a reference to an OperationOutcome resource shall be included."
Severity: #error
Expression: "iif(entry.resource.ofType(MessageHeader).response.code = 'ok', true, entry.resource.ofType(MessageHeader).response.code != 'ok' and entry.resource.ofType(OperationOutcome).exists())"

Invariant: medcom-messaging-3
Description: "The message header shall conform to medcom-messaging-acknowledgementHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-acknowledgementHeader'))"

Invariant: medcom-messaging-4
Description: "The Acknowledgement entry shall contain at least one Provenance resource"
Severity: #error
Expression: "entry.resource.ofType(Provenance).count() >0"

Instance: a8c041b8-c65a-4fde-a90f-962076918834
InstanceOf: MedComAcknowledgementMessage
Title: "Example Acknowledgement message - Ok"
Description: "Example Acknowledgement message - Ok"
Usage: #example
* type = $BundleType#message
* timestamp = 2021-01-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/aba2d9bf-2c6c-47e8-bce4-7928bcd51019"
* entry[=].resource = aba2d9bf-2c6c-47e8-bce4-7928bcd51019
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/69dab277-dd4b-4055-9fda-a10a65cb4412"
* entry[=].resource = 69dab277-dd4b-4055-9fda-a10a65cb4412
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d

Instance: bc9535ef-ed94-4060-a928-7baddec7ee71
InstanceOf: MedComAcknowledgementMessage
Title: "Example Acknowledgement message - Fatal error"
Description: "Example Acknowledgement message - Fatal error"
Usage: #example
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/b879c81e-0607-4ccb-b358-24a72208e30d"
* entry[=].resource = b879c81e-0607-4ccb-b358-24a72208e30d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/9c56ba88-9645-11ec-b909-0242ac120002"
* entry[=].resource = 9c56ba88-9645-11ec-b909-0242ac120002
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "OperationOutcome/becb2a8e-3a68-4083-910e-811296affd43"
* entry[=].resource = becb2a8e-3a68-4083-910e-811296affd43


Instance: c9c2b2f6-0807-11ed-861d-0242ac120002
InstanceOf: MedComAcknowledgementMessage
Title: "Example Acknowledgement message - Transient error"
Description: "Example Acknowledgement message - Transient error"
Usage: #example
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/c9a0b728-0807-11ed-861d-0242ac120002"
* entry[=].resource = c9a0b728-0807-11ed-861d-0242ac120002
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/9c56ba88-9645-11ec-b909-0242ac120002"
* entry[=].resource = 9c56ba88-9645-11ec-b909-0242ac120002
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "OperationOutcome/c0055484-2a56-4da2-81b8-a9d5087d865c"
* entry[=].resource = c0055484-2a56-4da2-81b8-a9d5087d865c