Instance: 3f8ed4ab-5e1d-4b95-b8e3-9bc48494ab15
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/3cc5af7e-6404-4bb2-9ca4-23225f4f9c35"
* entry[=].resource = 3cc5af7e-6404-4bb2-9ca4-23225f4f9c35
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/e9c3ddf3-dc90-4ce2-ba23-3b3cd6cc41fb"
* entry[=].resource = e9c3ddf3-dc90-4ce2-ba23-3b3cd6cc41fb
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/56894c4f-c625-4dd9-a5b1-26a83f263be1"
* entry[=].resource = 56894c4f-c625-4dd9-a5b1-26a83f263be1
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/a8ddbee8-a164-4cf3-b73a-d6cb74553206"
* entry[=].resource = a8ddbee8-a164-4cf3-b73a-d6cb74553206
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/9d2d3d7c-6fdb-47b8-b8a9-16d9fb2b7f4d"
* entry[=].resource = 9d2d3d7c-6fdb-47b8-b8a9-16d9fb2b7f4d

Instance: 3cc5af7e-6404-4bb2-9ca4-23225f4f9c35
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(9d2d3d7c-6fdb-47b8-b8a9-16d9fb2b7f4d)
* sender = Reference(a8ddbee8-a164-4cf3-b73a-d6cb74553206)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: e9c3ddf3-dc90-4ce2-ba23-3b3cd6cc41fb
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(9d2d3d7c-6fdb-47b8-b8a9-16d9fb2b7f4d)

Instance: 56894c4f-c625-4dd9-a5b1-26a83f263be1
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(3cc5af7e-6404-4bb2-9ca4-23225f4f9c35)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(a8ddbee8-a164-4cf3-b73a-d6cb74553206)
* entity.role = #revision
* entity.what = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: a8ddbee8-a164-4cf3-b73a-d6cb74553206
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 9d2d3d7c-6fdb-47b8-b8a9-16d9fb2b7f4d
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"