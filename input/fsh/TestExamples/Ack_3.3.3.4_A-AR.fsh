
Instance: 5445e556-aa51-4eea-8871-887fb3afacda
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.3.3.4 - Example Acknowledgement message - Transient error"
Description: "Ack_3.3.3.4 - Example Acknowledgement message - Transient error"
* type = $BundleType#message
* timestamp = 2024-12-05T11:15:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/fb00b77f-c2d5-4f4e-ab3f-1f257b06cae7"
* entry[=].resource = fb00b77f-c2d5-4f4e-ab3f-1f257b06cae7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/9ba01c4e-80f5-4770-a301-d55ffe69e253"
* entry[=].resource = 9ba01c4e-80f5-4770-a301-d55ffe69e253
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/90d4a003-c0a7-4ed5-a548-7c669030a2be"
* entry[=].resource = 90d4a003-c0a7-4ed5-a548-7c669030a2be
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/786e8cc2-f8b1-4270-872c-1a0e8a06d9d0"
* entry[=].resource = 786e8cc2-f8b1-4270-872c-1a0e8a06d9d0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/6a52c4a7-5025-4b7f-ae1e-df164c9a4739"
* entry[=].resource = 6a52c4a7-5025-4b7f-ae1e-df164c9a4739
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/821ae7c4-702f-431e-a0fc-32abcac1f248"
* entry[=].resource = 821ae7c4-702f-431e-a0fc-32abcac1f248

Instance: fb00b77f-c2d5-4f4e-ab3f-1f257b06cae7
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - transient-error message"
Description: "Acknowledgement MessageHeader - transient-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(6a52c4a7-5025-4b7f-ae1e-df164c9a4739)
* sender = Reference(786e8cc2-f8b1-4270-872c-1a0e8a06d9d0)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#transient-error
* response.details = Reference(821ae7c4-702f-431e-a0fc-32abcac1f248)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 9ba01c4e-80f5-4770-a301-d55ffe69e253
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T11:15:20+01:00
* recorded = 2024-12-05T11:15:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(786e8cc2-f8b1-4270-872c-1a0e8a06d9d0)

Instance: 90d4a003-c0a7-4ed5-a548-7c669030a2be
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(fb00b77f-c2d5-4f4e-ab3f-1f257b06cae7)
* occurredDateTime = 2024-12-05T11:15:20+01:00
* recorded = 2024-12-05T11:15:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(6a52c4a7-5025-4b7f-ae1e-df164c9a4739)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// receiver instance
Instance: 6a52c4a7-5025-4b7f-ae1e-df164c9a4739
InstanceOf: MedComMessagingOrganization
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: 786e8cc2-f8b1-4270-872c-1a0e8a06d9d0
InstanceOf: MedComMessagingOrganization
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"

Instance: 821ae7c4-702f-431e-a0fc-32abcac1f248
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'information'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#information
* issue.code =  $CodeCode#informational
* issue.details.text = "No summary for the Patient instance."
