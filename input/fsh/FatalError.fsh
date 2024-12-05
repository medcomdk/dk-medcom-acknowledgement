/*
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

Instance: b879c81e-0607-4ccb-b358-24a72208e30d
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - fatal-error message"
Description: "Acknowledgement MessageHeader - fatal-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(becb2a8e-3a68-4083-910e-811296affd43)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"


// provernance
Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 9c56ba88-9645-11ec-b909-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(b879c81e-0607-4ccb-b358-24a72208e30d)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)


// Reciever instance
Instance: 74cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"

Instance: becb2a8e-3a68-4083-910e-811296affd43
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.coding = $IssueCodes#MSG_VALUESET_VALUE_UNKNOWN	// Vary between code and text

*/