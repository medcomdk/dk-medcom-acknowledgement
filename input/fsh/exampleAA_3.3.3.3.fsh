Instance: Ack-3.3.3.3-A-AA-0c2b7ac3-df58-49ca-9733-3723b5ea6b9d
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/62d6e218-7341-49df-bd5a-5a1a532ddbae"
* entry[=].resource = 62d6e218-7341-49df-bd5a-5a1a532ddbae
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/841e7ff3-b984-490e-9dcb-6730ea091c44"
* entry[=].resource = 841e7ff3-b984-490e-9dcb-6730ea091c44
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/0c0d8e6c-4121-4454-a1ac-7d71311bf525"
* entry[=].resource = 0c0d8e6c-4121-4454-a1ac-7d71311bf525
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/1ce8f7a2-cbdc-4d4f-858a-ea59ab03a612"
* entry[=].resource = 1ce8f7a2-cbdc-4d4f-858a-ea59ab03a612
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/85494bd9-4d39-4e25-8c4d-ebcd5b7cc525"
* entry[=].resource = 85494bd9-4d39-4e25-8c4d-ebcd5b7cc525

Instance: 62d6e218-7341-49df-bd5a-5a1a532ddbae
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(85494bd9-4d39-4e25-8c4d-ebcd5b7cc525)
* sender = Reference(1ce8f7a2-cbdc-4d4f-858a-ea59ab03a612)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #ok
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 841e7ff3-b984-490e-9dcb-6730ea091c44
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(85494bd9-4d39-4e25-8c4d-ebcd5b7cc525)

Instance: 0c0d8e6c-4121-4454-a1ac-7d71311bf525
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(62d6e218-7341-49df-bd5a-5a1a532ddbae)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(1ce8f7a2-cbdc-4d4f-858a-ea59ab03a612)
* entity.role = #revision
* entity.what = Reference(MessageHeader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: 1ce8f7a2-cbdc-4d4f-858a-ea59ab03a612
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 85494bd9-4d39-4e25-8c4d-ebcd5b7cc525
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"