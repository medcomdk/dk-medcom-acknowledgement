Instance: 8fa4b46a-80a0-4cb2-b9cb-ab365e89eb03
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.4.1_A-ok - Example Acknowledgement message - Ok"
Description: "Ack_3.4.1_A-ok - Example Acknowledgement message - Ok"
* type = $BundleType#message
* timestamp = 2024-12-05T10:15:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/a735cd6a-b7c2-42c9-a8d7-053244e75b62"
* entry[=].resource = a735cd6a-b7c2-42c9-a8d7-053244e75b62
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/d73941fd-4d2e-47fe-8402-b210973bc23b"
* entry[=].resource = d73941fd-4d2e-47fe-8402-b210973bc23b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/41cd192e-d1a9-4b88-9101-5caaf384afca"
* entry[=].resource = 41cd192e-d1a9-4b88-9101-5caaf384afca
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/f51c8120-54d8-4c2e-9c5a-5fabd053eeb8"
* entry[=].resource = f51c8120-54d8-4c2e-9c5a-5fabd053eeb8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/c99a583c-d446-4a39-a8cf-02f2d88be3da"
* entry[=].resource = c99a583c-d446-4a39-a8cf-02f2d88be3da


Instance: a735cd6a-b7c2-42c9-a8d7-053244e75b62
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.4.1_A-ok - Example MessageHeader -  ok message"
Description: "Ack_3.4.1_A-ok - Example MessageHeader - ok message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(c99a583c-d446-4a39-a8cf-02f2d88be3da)
* sender = Reference(f51c8120-54d8-4c2e-9c5a-5fabd053eeb8)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "42cb9200-f421-4d08-8391-7d51a2503cb4"
* response.code = $AcknowledgementCode#ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: d73941fd-4d2e-47fe-8402-b210973bc23b
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.4.1_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "Ack_3.4.1_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T10:15:00+02:00
* recorded = 2024-12-05T10:15:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(f51c8120-54d8-4c2e-9c5a-5fabd053eeb8)

Instance: 41cd192e-d1a9-4b88-9101-5caaf384afca
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.4.1_A-ok - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Ack_3.4.1_A-ok - Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(a735cd6a-b7c2-42c9-a8d7-053244e75b62)
* occurredDateTime = 2024-12-05T10:15:20+01:00
* recorded = 2024-12-05T10:15:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(c99a583c-d446-4a39-a8cf-02f2d88be3da)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// Reciever instance
Instance: c99a583c-d446-4a39-a8cf-02f2d88be3da
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.4.1_A-ok - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Ack_3.4.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: f51c8120-54d8-4c2e-9c5a-5fabd053eeb8
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.4.1_A-ok - Example of a sender organization with a SOR and an EAN identifier."
Description: "Ack_3.4.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"