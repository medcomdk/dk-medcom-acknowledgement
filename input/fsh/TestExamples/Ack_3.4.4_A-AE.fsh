Instance: afbdcb9c-ab3b-4391-9f5f-98fac2cd89c4
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.4.4 - Example Acknowledgement message - Fatal error"
Description: "Ack_3.4.4 - Example Acknowledgement message - Fatal error"
* type = $BundleType#message
* timestamp = 2024-12-05T11:09:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/b033429c-3d01-4ea1-8d8b-9f45515d952c"
* entry[=].resource = b033429c-3d01-4ea1-8d8b-9f45515d952c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/f049974e-bebf-4f89-ac8c-938ecf51a7dc"
* entry[=].resource = f049974e-bebf-4f89-ac8c-938ecf51a7dc
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4fce9a56-c149-40ce-b29c-1207a52bc2bc"
* entry[=].resource = 4fce9a56-c149-40ce-b29c-1207a52bc2bc
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/f915a013-c25a-4353-8bf1-bd5eb5beeb2e"
* entry[=].resource = f915a013-c25a-4353-8bf1-bd5eb5beeb2e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/f1774667-ced4-4a66-9017-b65f44741883"
* entry[=].resource = f1774667-ced4-4a66-9017-b65f44741883
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/649a459b-88fc-4ef0-8a99-9c85a7617edc"
* entry[=].resource = 649a459b-88fc-4ef0-8a99-9c85a7617edc

Instance: b033429c-3d01-4ea1-8d8b-9f45515d952c
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.4.4 - Acknowledgement MessageHeader - fatal-error message"
Description: "Acknowledgement MessageHeader - fatal-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(f1774667-ced4-4a66-9017-b65f44741883)
* sender = Reference(f915a013-c25a-4353-8bf1-bd5eb5beeb2e)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(649a459b-88fc-4ef0-8a99-9c85a7617edc)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"


// provernance
Instance: f049974e-bebf-4f89-ac8c-938ecf51a7dc
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.4.4 - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T11:09:20+01:00
* recorded = 2024-12-05T11:09:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(f915a013-c25a-4353-8bf1-bd5eb5beeb2e)

Instance: 4fce9a56-c149-40ce-b29c-1207a52bc2bc
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.4.4 - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(b033429c-3d01-4ea1-8d8b-9f45515d952c)
* occurredDateTime = 2024-12-05T11:09:20+01:00
* recorded = 2024-12-05T11:09:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(f1774667-ced4-4a66-9017-b65f44741883)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)


// Reciever instance
Instance: f1774667-ced4-4a66-9017-b65f44741883
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.4.4 - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: f915a013-c25a-4353-8bf1-bd5eb5beeb2e
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.4.4 - Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"

Instance: 649a459b-88fc-4ef0-8a99-9c85a7617edc
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "Ack_3.4.4 - MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.coding = $IssueCodes#MSG_VALUESET_VALUE_UNKNOWN	// Vary between code and text