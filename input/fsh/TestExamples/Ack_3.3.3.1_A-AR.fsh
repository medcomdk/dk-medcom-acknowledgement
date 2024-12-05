
Instance: 4db08f7f-b2b4-45f4-b5af-317e31c5ea3d
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.3.3.1 - Example Acknowledgement message - Transient error"
Description: "Ack_3.3.3.1 - Example Acknowledgement message - Transient error"
* type = $BundleType#message
* timestamp = 2024-12-05T11:15:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/55ab759a-de78-4fe4-a601-e2ebfaa0485f"
* entry[=].resource = 55ab759a-de78-4fe4-a601-e2ebfaa0485f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/e612d3ce-b469-487b-9f9f-a9c39d249d5f"
* entry[=].resource = e612d3ce-b469-487b-9f9f-a9c39d249d5f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/ab37b700-222a-405b-8ade-49ed3515b4d9"
* entry[=].resource = ab37b700-222a-405b-8ade-49ed3515b4d9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/d16ce2f9-b8eb-4f23-9e0c-834c46d6c32d"
* entry[=].resource = d16ce2f9-b8eb-4f23-9e0c-834c46d6c32d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/161d11cf-0ba9-4e32-b93c-ae52ffcce3ab"
* entry[=].resource = 161d11cf-0ba9-4e32-b93c-ae52ffcce3ab
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/7bfb33cf-4654-4d0f-91a7-b7d6dfafb138"
* entry[=].resource = 7bfb33cf-4654-4d0f-91a7-b7d6dfafb138

Instance: 55ab759a-de78-4fe4-a601-e2ebfaa0485f
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - transient-error message"
Description: "Acknowledgement MessageHeader - transient-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(161d11cf-0ba9-4e32-b93c-ae52ffcce3ab)
* sender = Reference(d16ce2f9-b8eb-4f23-9e0c-834c46d6c32d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#transient-error
* response.details = Reference(7bfb33cf-4654-4d0f-91a7-b7d6dfafb138)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: e612d3ce-b469-487b-9f9f-a9c39d249d5f
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T11:15:20+01:00
* recorded = 2024-12-05T11:15:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(d16ce2f9-b8eb-4f23-9e0c-834c46d6c32d)

Instance: ab37b700-222a-405b-8ade-49ed3515b4d9
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(55ab759a-de78-4fe4-a601-e2ebfaa0485f)
* occurredDateTime = 2024-12-05T11:15:20+01:00
* recorded = 2024-12-05T11:15:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(161d11cf-0ba9-4e32-b93c-ae52ffcce3ab)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// receiver instance
Instance: 161d11cf-0ba9-4e32-b93c-ae52ffcce3ab
InstanceOf: MedComMessagingOrganization
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: d16ce2f9-b8eb-4f23-9e0c-834c46d6c32d
InstanceOf: MedComMessagingOrganization
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"

Instance: 7bfb33cf-4654-4d0f-91a7-b7d6dfafb138
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#value
* issue.details.coding = $IssueCodes#MSG_Mailbox_Out_Of_Operation