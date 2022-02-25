Profile: MedComMessagingAcknowledgement
Parent: MedComMessagingMessage
Id: medcom-messaging-acknowledgement
Description: "Base resource for all MedCom Acknowledgement messages."
* obeys medcom-messaging-3
* obeys medcom-messaging-4
* entry ^short = "Message content (MedComAcknowledgementMessageHeader, MedComMessagingProvenance, MedComMessagingOrganization) - Open"

Invariant: medcom-messaging-3
Description: "The message header shall conform to medcom-messaging-acknowledgementHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-acknowledgementHeader'))"

Invariant: medcom-messaging-4
Description: "The Acknowledgement entry shall contain at least one Provenance resource"
Severity: #error
Expression: "entry.resource.ofType(Provenance).count() >0"

Instance: 2c9535ef-ed94-4060-a928-7baddec7ee71
InstanceOf: MedComMessagingAcknowledgement
Title: "Example of a fatal error Acknowledgement message"
Description: "Example of a fatal error Acknowledgement message"
Usage: #example
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/4879c81e-0607-4ccb-b358-24a72208e30d"
* entry[=].resource = 4879c81e-0607-4ccb-b358-24a72208e30d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/9c56ba88-9645-11ec-b909-0242ac120002"
* entry[=].resource = 9c56ba88-9645-11ec-b909-0242ac120002
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "OperationOutcome/4ecb2a8e-3a68-4083-910e-811296affd43"
* entry[=].resource = 4ecb2a8e-3a68-4083-910e-811296affd43

Instance: d8c041b8-c65a-4fde-a90f-962076918834
InstanceOf: MedComMessagingAcknowledgement
Title: "Example of a ok Acknowledgement message"
Description: "Example of a ok Acknowledgement message- CareCommunication"
Usage: #example
* type = $BundleType#message
* timestamp = 2021-01-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/4aa2d9bf-2c6c-47e8-bce4-7928bcd51019"
* entry[=].resource = 4aa2d9bf-2c6c-47e8-bce4-7928bcd51019
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/69dab277-dd4b-4055-9fda-a10a65cb4412"
* entry[=].resource = 69dab277-dd4b-4055-9fda-a10a65cb4412
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d

