Instance: 44bb93f9-94d7-4ef5-87e0-56a983c3dcb8
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.3.1.1_A-ok - Example Acknowledgement message - Ok"
Description: "Ack_3.3.1.1_A-ok - Example Acknowledgement message - Ok"
* type = $BundleType#message
* timestamp = 2024-12-05T10:15:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/0746dd4e-faec-4525-b968-1aeab18d4465"
* entry[=].resource = 0746dd4e-faec-4525-b968-1aeab18d4465
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4767889f-771c-4f74-81be-bb2e8e58c70b"
* entry[=].resource = 4767889f-771c-4f74-81be-bb2e8e58c70b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/a0c46c0b-6bbd-4ed9-82aa-104658783491"
* entry[=].resource = a0c46c0b-6bbd-4ed9-82aa-104658783491
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/06ba9393-9256-4d67-aed8-52985091ab7b"
* entry[=].resource = 06ba9393-9256-4d67-aed8-52985091ab7b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/87f589d3-d31d-4d7e-980e-323369ecd969"
* entry[=].resource = 87f589d3-d31d-4d7e-980e-323369ecd969


Instance: 0746dd4e-faec-4525-b968-1aeab18d4465
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.3.1.1_A-ok - Example MessageHeader -  ok message"
Description: "Ack_3.3.1.1_A-ok - Example MessageHeader - ok message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(87f589d3-d31d-4d7e-980e-323369ecd969)
* sender = Reference(06ba9393-9256-4d67-aed8-52985091ab7b) 
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* response.identifier = "42cb9200-f421-4d08-8391-7d51a2503cb4" // RET?
* response.code = $AcknowledgementCode#ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 4767889f-771c-4f74-81be-bb2e8e58c70b
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.1.1_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "Ack_3.3.1.1_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T10:15:00+02:00
* recorded = 2024-12-05T10:15:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(06ba9393-9256-4d67-aed8-52985091ab7b)

Instance: a0c46c0b-6bbd-4ed9-82aa-104658783491
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.1.1_A-ok - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Ack_3.3.1.1_A-ok - Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(0746dd4e-faec-4525-b968-1aeab18d4465)
* occurredDateTime = 2024-12-05T10:15:20+01:00
* recorded = 2024-12-05T10:15:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(87f589d3-d31d-4d7e-980e-323369ecd969)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// Reciever instance
Instance: 87f589d3-d31d-4d7e-980e-323369ecd969
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.1.1_A-ok - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Ack_3.3.1.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005"
* identifier[EAN-ID].value = "5790000121526"
* name = "Receiver Organization (Sender of original message)"

// Sender instance
Instance: 06ba9393-9256-4d67-aed8-52985091ab7b
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.1.1_A-ok - Example of a sender organization with a SOR and an EAN identifier."
Description: "Ack_3.3.1.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006"
* identifier[EAN-ID].value = "5790000120314"
* name = "Sender Organization (Receiver of original message)"