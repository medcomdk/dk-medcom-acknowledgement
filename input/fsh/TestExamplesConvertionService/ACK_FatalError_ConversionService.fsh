Instance: a1d7082a-d89d-4141-95c0-f9244b6437fa
InstanceOf: MedComAcknowledgementMessage
Title: "ACK_FatalError_ConvertionService - Example Acknowledgement message - Fatal error"
Description: "Example Acknowledgement message - Fatal error"
* type = $BundleType#message
* timestamp = 2025-17-01T12:01:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/b124507d-deab-4757-9574-f7d1e3eb685f"
* entry[=].resource = b124507d-deab-4757-9574-f7d1e3eb685f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/1696bd1c-8cc8-4b69-8a24-2431bfa62b16"
* entry[=].resource = 1696bd1c-8cc8-4b69-8a24-2431bfa62b16
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/0cdaf3f4-7fe5-498f-a4a6-ef8badf6e217"
* entry[=].resource = 0cdaf3f4-7fe5-498f-a4a6-ef8badf6e217
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/b3cad341-a58c-4400-a34a-95050b63d2e2"
* entry[=].resource = b3cad341-a58c-4400-a34a-95050b63d2e2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/f2a0c2d1-ef4c-4d9f-85bf-c2ed4dfb4d83"
* entry[=].resource = f2a0c2d1-ef4c-4d9f-85bf-c2ed4dfb4d83
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/2428cb64-83b5-4da5-b9c8-b6a80f968278"
* entry[=].resource = 2428cb64-83b5-4da5-b9c8-b6a80f968278

Instance: b124507d-deab-4757-9574-f7d1e3eb685f
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - fatal-error message"
Description: "Acknowledgement MessageHeader - fatal-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(f2a0c2d1-ef4c-4d9f-85bf-c2ed4dfb4d83)
* sender = Reference(b3cad341-a58c-4400-a34a-95050b63d2e2)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(2428cb64-83b5-4da5-b9c8-b6a80f968278)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 1696bd1c-8cc8-4b69-8a24-2431bfa62b16
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(b3cad341-a58c-4400-a34a-95050b63d2e2)

Instance: 0cdaf3f4-7fe5-498f-a4a6-ef8badf6e217
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(b124507d-deab-4757-9574-f7d1e3eb685f)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(f2a0c2d1-ef4c-4d9f-85bf-c2ed4dfb4d83)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// Reciever instance
Instance: f2a0c2d1-ef4c-4d9f-85bf-c2ed4dfb4d83
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.1.1_A-ok - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Ack_3.3.1.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005"
* identifier[EAN-ID].value = "5790000121526"
* name = "Receiver Organization (Sender of original message)"

// Sender instance
Instance: b3cad341-a58c-4400-a34a-95050b63d2e2
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.1.1_A-ok - Example of a sender organization with a SOR and an EAN identifier."
Description: "Ack_3.3.1.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006"
* identifier[EAN-ID].value = "5790000120314"
* name = "Sender Organization (Receiver of original message)"


Instance: 2428cb64-83b5-4da5-b9c8-b6a80f968278
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.coding = $IssueCodes#MSG_VALUESET_VALUE_UNKNOWN