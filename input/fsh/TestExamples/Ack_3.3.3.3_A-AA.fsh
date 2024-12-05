Instance: 24d9d6a3-dfbb-4a6d-a986-b73fd3375c76
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.3.3.3_A-ok - Example Acknowledgement message - Ok"
Description: "Ack_3.3.3.3_A-ok - Example Acknowledgement message - Ok"
* type = $BundleType#message
* timestamp = 2024-12-05T10:15:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/30f496eb-bed3-45d0-ab98-5df7ec954389"
* entry[=].resource = 30f496eb-bed3-45d0-ab98-5df7ec954389
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/e19b5a23-46b2-40d5-a2eb-293878e5a79d"
* entry[=].resource = e19b5a23-46b2-40d5-a2eb-293878e5a79d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/52abeb96-f5b2-4627-814a-6a5287590672"
* entry[=].resource = 52abeb96-f5b2-4627-814a-6a5287590672
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/7a8547d9-2a19-4a56-92fe-294c91ff813a"
* entry[=].resource = 7a8547d9-2a19-4a56-92fe-294c91ff813a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/20bc2756-125c-4e56-be36-060a21dc0252"
* entry[=].resource = 20bc2756-125c-4e56-be36-060a21dc0252


Instance: 30f496eb-bed3-45d0-ab98-5df7ec954389
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.3.3.3_A-ok - Example MessageHeader -  ok message"
Description: "Ack_3.3.3.3_A-ok - Example MessageHeader - ok message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(20bc2756-125c-4e56-be36-060a21dc0252)
* sender = Reference(7a8547d9-2a19-4a56-92fe-294c91ff813a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "42cb9200-f421-4d08-8391-7d51a2503cb4"
* response.code = $AcknowledgementCode#ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: e19b5a23-46b2-40d5-a2eb-293878e5a79d
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.3.3_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "Ack_3.3.3.3_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T10:15:00+02:00
* recorded = 2024-12-05T10:15:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(7a8547d9-2a19-4a56-92fe-294c91ff813a)

Instance: 52abeb96-f5b2-4627-814a-6a5287590672
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.3.3_A-ok - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Ack_3.3.3.3_A-ok - Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(30f496eb-bed3-45d0-ab98-5df7ec954389)
* occurredDateTime = 2024-12-05T10:15:20+01:00
* recorded = 2024-12-05T10:15:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(20bc2756-125c-4e56-be36-060a21dc0252)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// Reciever instance
Instance: 20bc2756-125c-4e56-be36-060a21dc0252
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.3.3_A-ok - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Ack_3.3.3.3_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: 7a8547d9-2a19-4a56-92fe-294c91ff813a
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.3.3_A-ok - Example of a sender organization with a SOR and an EAN identifier."
Description: "Ack_3.3.3.3_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"