/*
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

Instance: c9a0b728-0807-11ed-861d-0242ac120002
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - transient-error message"
Description: "Acknowledgement MessageHeader - transient-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#transient-error
* response.details = Reference(c0055484-2a56-4da2-81b8-a9d5087d865c)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 9b56aa88-9745-12ec-b919-0242ac122002
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(c9a0b728-0807-11ed-861d-0242ac120002)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// receiver instance
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

Instance: c0055484-2a56-4da2-81b8-a9d5087d865c
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#value
* issue.details.coding = $IssueCodes#MSG_Mailbox_Out_Of_Operation

*/