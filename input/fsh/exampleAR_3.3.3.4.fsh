Instance: Ack-3.3.3.4-A-AR-9724e7d4-a741-4a79-a64a-a29be587a750
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/1b266cab-69cb-4a7b-a609-0018b6b42f80"
* entry[=].resource = 1b266cab-69cb-4a7b-a609-0018b6b42f80
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/37a86003-4444-4d12-badf-9768720455e0"
* entry[=].resource = 37a86003-4444-4d12-badf-9768720455e0
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/3e4ada1a-1b48-4ad2-8bea-16c82b40e369"
* entry[=].resource = 3e4ada1a-1b48-4ad2-8bea-16c82b40e369
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/7540cc46-fbbb-4b53-8014-7ce504479927"
* entry[=].resource = 7540cc46-fbbb-4b53-8014-7ce504479927
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/73ca94c1-e85b-42df-8872-26ddbd9d1263"
* entry[=].resource = 73ca94c1-e85b-42df-8872-26ddbd9d1263
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/OperationOutcome/27df0ae5-dcb9-49b8-9b59-891dc016dc1d"
* entry[=].resource = 27df0ae5-dcb9-49b8-9b59-891dc016dc1d  

Instance: 27df0ae5-dcb9-49b8-9b59-891dc016dc1d
InstanceOf: MedComAcknowledgementOperationOutcome
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-acknowledgement-operationoutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.text = "We have a temporary problem with our system. Please try again later. If the problem persists, please contact the system administrator."



Instance: 1b266cab-69cb-4a7b-a609-0018b6b42f80
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(73ca94c1-e85b-42df-8872-26ddbd9d1263)
* sender = Reference(7540cc46-fbbb-4b53-8014-7ce504479927)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #transient-error
* response.details = Reference(27df0ae5-dcb9-49b8-9b59-891dc016dc1d)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 37a86003-4444-4d12-badf-9768720455e0
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(73ca94c1-e85b-42df-8872-26ddbd9d1263)

Instance: 3e4ada1a-1b48-4ad2-8bea-16c82b40e369
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/1b266cab-69cb-4a7b-a609-0018b6b42f80)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(7540cc46-fbbb-4b53-8014-7ce504479927)
* entity.role = #revision
* entity.what = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: 7540cc46-fbbb-4b53-8014-7ce504479927
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 73ca94c1-e85b-42df-8872-26ddbd9d1263
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"