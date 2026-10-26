Instance: Ack-3.3.2.1-A-AE-be229b13-9e63-4a5e-b369-5ade6bf57878
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/02665c33-7c57-4857-a8a0-682cf58e5a12"
* entry[=].resource = 02665c33-7c57-4857-a8a0-682cf58e5a12
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/0ea2e2c6-9bcb-47cd-8348-9ef7854bde30"
* entry[=].resource = 0ea2e2c6-9bcb-47cd-8348-9ef7854bde30
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/4989e77e-5783-4bfb-97e8-3b52abd4444b"
* entry[=].resource = 4989e77e-5783-4bfb-97e8-3b52abd4444b
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/9d1d4a7f-3bb6-478c-a3b1-f2b5978d4de7"
* entry[=].resource = 9d1d4a7f-3bb6-478c-a3b1-f2b5978d4de7
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/a1dc5369-18c5-473a-b78e-841b05651f73"
* entry[=].resource = a1dc5369-18c5-473a-b78e-841b05651f73
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/OperationOutcome/13850d23-377f-4951-9605-0e5457e113a9"
* entry[=].resource = 13850d23-377f-4951-9605-0e5457e113a9  

Instance: 13850d23-377f-4951-9605-0e5457e113a9
InstanceOf: MedComAcknowledgementOperationOutcome
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-acknowledgement-operationoutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.text = "The message could not be processed due to an unknown value in the message. Please check the message and resend it."



Instance: 02665c33-7c57-4857-a8a0-682cf58e5a12
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(a1dc5369-18c5-473a-b78e-841b05651f73)
* sender = Reference(9d1d4a7f-3bb6-478c-a3b1-f2b5978d4de7)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #fatal-error
* response.details = Reference(13850d23-377f-4951-9605-0e5457e113a9)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 0ea2e2c6-9bcb-47cd-8348-9ef7854bde30
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(a1dc5369-18c5-473a-b78e-841b05651f73)

Instance: 4989e77e-5783-4bfb-97e8-3b52abd4444b
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/02665c33-7c57-4857-a8a0-682cf58e5a12)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(9d1d4a7f-3bb6-478c-a3b1-f2b5978d4de7)
* entity.role = #revision
* entity.what = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: 9d1d4a7f-3bb6-478c-a3b1-f2b5978d4de7
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: a1dc5369-18c5-473a-b78e-841b05651f73
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"