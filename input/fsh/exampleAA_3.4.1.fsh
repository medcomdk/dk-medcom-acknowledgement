Instance: Ack-3.4.1-A-AA-ee7168ca-f1a1-45b2-89b4-304cf742db68
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/b2eaf4a2-a85c-427c-9ce1-36ce281f1c00"
* entry[=].resource = b2eaf4a2-a85c-427c-9ce1-36ce281f1c00
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/63dccc96-152a-4a91-b436-d6d69dbc5ed2"
* entry[=].resource = 63dccc96-152a-4a91-b436-d6d69dbc5ed2
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/b17ad38c-fd68-4857-a1f2-81cc1d43f078"
* entry[=].resource = b17ad38c-fd68-4857-a1f2-81cc1d43f078
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/a0e97315-5b24-44f1-a4e2-891d37458d15"
* entry[=].resource = a0e97315-5b24-44f1-a4e2-891d37458d15
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/ddb65180-4c6c-4ba1-b89c-03ce74427ae2"
* entry[=].resource = ddb65180-4c6c-4ba1-b89c-03ce74427ae2

Instance: b2eaf4a2-a85c-427c-9ce1-36ce281f1c00
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(ddb65180-4c6c-4ba1-b89c-03ce74427ae2)
* sender = Reference(a0e97315-5b24-44f1-a4e2-891d37458d15)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 63dccc96-152a-4a91-b436-d6d69dbc5ed2
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(ddb65180-4c6c-4ba1-b89c-03ce74427ae2)

Instance: b17ad38c-fd68-4857-a1f2-81cc1d43f078
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(b2eaf4a2-a85c-427c-9ce1-36ce281f1c00)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(a0e97315-5b24-44f1-a4e2-891d37458d15)
* entity.role = #revision
* entity.what = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: a0e97315-5b24-44f1-a4e2-891d37458d15
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: ddb65180-4c6c-4ba1-b89c-03ce74427ae2
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"