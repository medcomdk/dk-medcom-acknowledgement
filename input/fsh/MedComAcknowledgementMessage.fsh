Profile: MedComAcknowledgementMessage
Parent: MedComMessagingMessage
Id: medcom-messaging-acknowledgement
Description: "Base resource for all MedCom Acknowledgement messages."
* obeys medcom-acknowledgement-2
* entry ^short = "Message content (MedComAcknowledgementMessageHeader, MedComMessagingProvenance, MedComMessagingOrganization) - Open"
* obeys medcom-acknowledgement-1

Invariant: medcom-acknowledgement-1
Description: "If the response.code is different than 'ok', a reference to an OperationOutcome resource shall be included."
Severity: #error
Expression: "iif(entry.resource.ofType(MessageHeader).response.code = 'ok', true, entry.resource.ofType(MessageHeader).response.code != 'ok' and entry.resource.ofType(OperationOutcome).exists())"

Invariant: medcom-acknowledgement-2
Description: "The message header shall conform to medcom-messaging-acknowledgementHeader profile"
Severity: #error
Expression: "entry.resource.ofType(MessageHeader).conformsTo('http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader')"

/*
Instance: a8c041b8-c65a-4fde-a90f-962076918834
InstanceOf: MedComAcknowledgementMessage
Title: "Example Acknowledgement message - Ok"
Description: "Example Acknowledgement message - Ok"
* type = $BundleType#message
* timestamp = 2022-09-01T12:01:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/aba2d9bf-2c6c-47e8-bce4-7928bcd51019"
* entry[=].resource = aba2d9bf-2c6c-47e8-bce4-7928bcd51019
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/69dab277-dd4b-4055-9fda-a10a65cb4412"
* entry[=].resource = 69dab277-dd4b-4055-9fda-a10a65cb4412
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d

Instance: bc9535ef-ed94-4060-a928-7baddec7ee71
InstanceOf: MedComAcknowledgementMessage
Title: "Example Acknowledgement message - Fatal error"
Description: "Example Acknowledgement message - Fatal error"
* type = $BundleType#message
* timestamp = 2022-09-01T12:01:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/b879c81e-0607-4ccb-b358-24a72208e30d"
* entry[=].resource = b879c81e-0607-4ccb-b358-24a72208e30d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/9c56ba88-9645-11ec-b909-0242ac120002"
* entry[=].resource = 9c56ba88-9645-11ec-b909-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/becb2a8e-3a68-4083-910e-811296affd43"
* entry[=].resource = becb2a8e-3a68-4083-910e-811296affd43


Instance: c9c2b2f6-0807-11ed-861d-0242ac120002
InstanceOf: MedComAcknowledgementMessage
Title: "Example Acknowledgement message - Transient error"
Description: "Example Acknowledgement message - Transient error"
* type = $BundleType#message
* timestamp = 2022-09-01T12:01:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/c9a0b728-0807-11ed-861d-0242ac120002"
* entry[=].resource = c9a0b728-0807-11ed-861d-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/9b56aa88-9745-12ec-b919-0242ac122002"
* entry[=].resource = 9b56aa88-9745-12ec-b919-0242ac122002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/c0055484-2a56-4da2-81b8-a9d5087d865c"
* entry[=].resource = c0055484-2a56-4da2-81b8-a9d5087d865c

*/