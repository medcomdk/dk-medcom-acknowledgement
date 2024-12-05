Instance: b540407f-9cea-4b45-85f4-c829f2a0dc7a
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.3.2.1 - Example Acknowledgement message - Fatal error"
Description: "Ack_3.3.2.1 - Example Acknowledgement message - Fatal error"
* type = $BundleType#message
* timestamp = 2024-12-05T11:09:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/074f4b22-43a3-477a-ad44-96830aaf4ef4"
* entry[=].resource = 074f4b22-43a3-477a-ad44-96830aaf4ef4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4075f81f-0929-4d0d-a285-1b16ebf8015a"
* entry[=].resource = 4075f81f-0929-4d0d-a285-1b16ebf8015a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/37f94686-2548-42df-aaa4-8f3e170c2063"
* entry[=].resource = 37f94686-2548-42df-aaa4-8f3e170c2063
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/d8c00cf0-c201-4d57-807a-9097e701c82b"
* entry[=].resource = d8c00cf0-c201-4d57-807a-9097e701c82b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/c21ec0b4-04fe-46a9-a7e9-e832fb3d62d6"
* entry[=].resource = c21ec0b4-04fe-46a9-a7e9-e832fb3d62d6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/77c3db3e-db26-4ebb-a0b9-23adbc4fe154"
* entry[=].resource = 77c3db3e-db26-4ebb-a0b9-23adbc4fe154

Instance: 074f4b22-43a3-477a-ad44-96830aaf4ef4
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.3.2.1 - Acknowledgement MessageHeader - fatal-error message"
Description: "Acknowledgement MessageHeader - fatal-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(c21ec0b4-04fe-46a9-a7e9-e832fb3d62d6)
* sender = Reference(d8c00cf0-c201-4d57-807a-9097e701c82b)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(77c3db3e-db26-4ebb-a0b9-23adbc4fe154)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"


// provernance
Instance: 4075f81f-0929-4d0d-a285-1b16ebf8015a
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.2.1 - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T11:09:20+01:00
* recorded = 2024-12-05T11:09:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(d8c00cf0-c201-4d57-807a-9097e701c82b)

Instance: 37f94686-2548-42df-aaa4-8f3e170c2063
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.2.1 - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(074f4b22-43a3-477a-ad44-96830aaf4ef4)
* occurredDateTime = 2024-12-05T11:09:20+01:00
* recorded = 2024-12-05T11:09:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(c21ec0b4-04fe-46a9-a7e9-e832fb3d62d6)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)


// Reciever instance
Instance: c21ec0b4-04fe-46a9-a7e9-e832fb3d62d6
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.2.1 - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: d8c00cf0-c201-4d57-807a-9097e701c82b
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.2.1 - Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"

Instance: 77c3db3e-db26-4ebb-a0b9-23adbc4fe154
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "Ack_3.3.2.1 - MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.coding = $IssueCodes#MSG_VALUESET_VALUE_UNKNOWN	// Vary between code and text