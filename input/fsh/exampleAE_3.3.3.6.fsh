Instance: Ack-3.3.3.6-A-AE-b57a7ac4-83ca-4a97-a622-04ac10367704
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/597be454-51b3-4caa-aa89-39f8705c33a8"
* entry[=].resource = 597be454-51b3-4caa-aa89-39f8705c33a8
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/e0bb5e41-d880-4cf9-a679-9adcd6d75be5"
* entry[=].resource = e0bb5e41-d880-4cf9-a679-9adcd6d75be5
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/695d49dc-84a7-4060-a3a0-963c55df76c5"
* entry[=].resource = 695d49dc-84a7-4060-a3a0-963c55df76c5
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/1bca1d50-5bc5-4047-b1e0-4b3e6c4dd771"
* entry[=].resource = 1bca1d50-5bc5-4047-b1e0-4b3e6c4dd771
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/7ee25aff-01f6-4a6c-832b-20a4441a769a"
* entry[=].resource = 7ee25aff-01f6-4a6c-832b-20a4441a769a
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/OperationOutcome/066a18b0-8687-4f06-a48e-8ed47fda09b2"
* entry[=].resource = 066a18b0-8687-4f06-a48e-8ed47fda09b2  

Instance: 066a18b0-8687-4f06-a48e-8ed47fda09b2
InstanceOf: MedComAcknowledgementOperationOutcome
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-acknowledgement-operationoutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.text = "The message could not be processed due to an unknown value in the message. Please check the message and resend it."



Instance: 597be454-51b3-4caa-aa89-39f8705c33a8
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(7ee25aff-01f6-4a6c-832b-20a4441a769a)
* sender = Reference(1bca1d50-5bc5-4047-b1e0-4b3e6c4dd771)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #fatal-error
* response.details = Reference(066a18b0-8687-4f06-a48e-8ed47fda09b2)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: e0bb5e41-d880-4cf9-a679-9adcd6d75be5
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(7ee25aff-01f6-4a6c-832b-20a4441a769a)

Instance: 695d49dc-84a7-4060-a3a0-963c55df76c5
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/597be454-51b3-4caa-aa89-39f8705c33a8)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(1bca1d50-5bc5-4047-b1e0-4b3e6c4dd771)
* entity.role = #revision
* entity.what = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: 1bca1d50-5bc5-4047-b1e0-4b3e6c4dd771
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 7ee25aff-01f6-4a6c-832b-20a4441a769a
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"