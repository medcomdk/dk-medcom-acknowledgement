Instance: Ack-3.4.2-A-AA-50d7a84a-b616-457a-b0bd-c38f066487e0
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/ae9f1f4e-8dd6-4034-a53f-4abce13f89df"
* entry[=].resource = ae9f1f4e-8dd6-4034-a53f-4abce13f89df
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/37c4b333-b137-4def-ab43-13e17b96200b"
* entry[=].resource = 37c4b333-b137-4def-ab43-13e17b96200b
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/5d630ab8-6b7b-4d2d-b8bd-35e795820d2b"
* entry[=].resource = 5d630ab8-6b7b-4d2d-b8bd-35e795820d2b
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/b71333bc-635e-4489-8f09-64a935d6bd91"
* entry[=].resource = b71333bc-635e-4489-8f09-64a935d6bd91
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/647d6881-6506-41d3-aa99-e20369b873fa"
* entry[=].resource = 647d6881-6506-41d3-aa99-e20369b873fa

Instance: ae9f1f4e-8dd6-4034-a53f-4abce13f89df
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(647d6881-6506-41d3-aa99-e20369b873fa)
* sender = Reference(b71333bc-635e-4489-8f09-64a935d6bd91)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 37c4b333-b137-4def-ab43-13e17b96200b
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(647d6881-6506-41d3-aa99-e20369b873fa)

Instance: 5d630ab8-6b7b-4d2d-b8bd-35e795820d2b
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(ae9f1f4e-8dd6-4034-a53f-4abce13f89df)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(b71333bc-635e-4489-8f09-64a935d6bd91)
* entity.role = #revision
* entity.what = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: b71333bc-635e-4489-8f09-64a935d6bd91
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 647d6881-6506-41d3-aa99-e20369b873fa
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"