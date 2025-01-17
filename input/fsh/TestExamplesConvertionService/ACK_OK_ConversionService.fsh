Instance: c5542928-8128-40c2-854b-279a8e3c7887
InstanceOf: MedComAcknowledgementMessage
Title: "ACK_OK_ConvertionService - Example Acknowledgement message - Ok"
Description: "Example Acknowledgement message - Ok"
* type = $BundleType#message
* timestamp = 2025-17-01T12:01:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/5d30e750-68cc-434f-a3b9-c5c9e6588b47"
* entry[=].resource = 5d30e750-68cc-434f-a3b9-c5c9e6588b47
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/ae21f704-e904-4691-86d4-759151ecde96"
* entry[=].resource = ae21f704-e904-4691-86d4-759151ecde96
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/43bdaccb-faef-4cbc-9caa-84b0397be005"
* entry[=].resource = 43bdaccb-faef-4cbc-9caa-84b0397be005
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/b98a524c-4e0e-4d35-9f77-54bb722b839b"
* entry[=].resource = b98a524c-4e0e-4d35-9f77-54bb722b839b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/3202024e-80b9-42ff-9b64-75347f503748"
* entry[=].resource = 3202024e-80b9-42ff-9b64-75347f503748

Instance: 5d30e750-68cc-434f-a3b9-c5c9e6588b47
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader -  ok message"
Description: "Acknowledgement MessageHeader - ok message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(3202024e-80b9-42ff-9b64-75347f503748)
* sender = Reference(b98a524c-4e0e-4d35-9f77-54bb722b839b)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* response.identifier = "42cb9200-f421-4d08-8391-7d51a2503cb4" // Reference to the original message that must be changed
* response.code = $AcknowledgementCode#ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: ae21f704-e904-4691-86d4-759151ecde96
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(b98a524c-4e0e-4d35-9f77-54bb722b839b)

Instance: 43bdaccb-faef-4cbc-9caa-84b0397be005
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(5d30e750-68cc-434f-a3b9-c5c9e6588b47)
* occurredDateTime = 2022-09-01T12:01:20+02:00
* recorded = 2022-09-01T12:01:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(3202024e-80b9-42ff-9b64-75347f503748)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// Sender instance
Instance: b98a524c-4e0e-4d35-9f77-54bb722b839b
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.1.1_A-ok - Example of a sender organization with a SOR and an EAN identifier."
Description: "Ack_3.3.1.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006"
* identifier[EAN-ID].value = "5790000120314"
* name = "Sender Organization (Receiver of original message)"

// Reciever instance
Instance: 3202024e-80b9-42ff-9b64-75347f503748
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.1.1_A-ok - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Ack_3.3.1.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005"
* identifier[EAN-ID].value = "5790000121526"
* name = "Receiver Organization (Sender of original message)"