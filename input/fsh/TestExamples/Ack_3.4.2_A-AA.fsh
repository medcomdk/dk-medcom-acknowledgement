Instance: 47a4b02a-18a0-4dac-993b-7f07a8b16466
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.4.1_A-ok - Example Acknowledgement message - Ok"
Description: "Ack_3.4.1_A-ok - Example Acknowledgement message - Ok"
* type = $BundleType#message
* timestamp = 2024-12-05T10:15:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/e290dc0c-235b-4b95-900d-fc897f7e8833"
* entry[=].resource = e290dc0c-235b-4b95-900d-fc897f7e8833
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/c9b81253-d61f-4cca-8230-50f78baa432f"
* entry[=].resource = c9b81253-d61f-4cca-8230-50f78baa432f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/0591e40a-8990-41f6-8232-352dddd79c29"
* entry[=].resource = 0591e40a-8990-41f6-8232-352dddd79c29
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/5759f328-0999-4a0c-8d0f-c693f025f02d"
* entry[=].resource = 5759f328-0999-4a0c-8d0f-c693f025f02d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/df472f2c-578e-472a-80af-ce3d6375a57a"
* entry[=].resource = df472f2c-578e-472a-80af-ce3d6375a57a


Instance: e290dc0c-235b-4b95-900d-fc897f7e8833
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.4.1_A-ok - Example MessageHeader -  ok message"
Description: "Ack_3.4.1_A-ok - Example MessageHeader - ok message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(df472f2c-578e-472a-80af-ce3d6375a57a)
* sender = Reference(5759f328-0999-4a0c-8d0f-c693f025f02d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "42cb9200-f421-4d08-8391-7d51a2503cb4"
* response.code = $AcknowledgementCode#ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: c9b81253-d61f-4cca-8230-50f78baa432f
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.4.1_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "Ack_3.4.1_A-ok - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T10:15:00+02:00
* recorded = 2024-12-05T10:15:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(5759f328-0999-4a0c-8d0f-c693f025f02d)

Instance: 0591e40a-8990-41f6-8232-352dddd79c29
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.4.1_A-ok - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Ack_3.4.1_A-ok - Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(e290dc0c-235b-4b95-900d-fc897f7e8833)
* occurredDateTime = 2024-12-05T10:15:20+01:00
* recorded = 2024-12-05T10:15:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(df472f2c-578e-472a-80af-ce3d6375a57a)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// Reciever instance
Instance: df472f2c-578e-472a-80af-ce3d6375a57a
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.4.1_A-ok - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Ack_3.4.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: 5759f328-0999-4a0c-8d0f-c693f025f02d
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.4.1_A-ok - Example of a sender organization with a SOR and an EAN identifier."
Description: "Ack_3.4.1_A-ok - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"