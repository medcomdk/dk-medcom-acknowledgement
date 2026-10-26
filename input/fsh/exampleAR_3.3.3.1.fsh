Instance: Ack-3.3.3.1-A-AR-3b5ed000-cfc4-4d80-91ab-929405876b27
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/55fd2956-36c3-4424-8391-07b6cf504274"
* entry[=].resource = 55fd2956-36c3-4424-8391-07b6cf504274
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/96f0682a-9d86-4d97-8f1a-5d2f80a1efd7"
* entry[=].resource = 96f0682a-9d86-4d97-8f1a-5d2f80a1efd7
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/7173b796-e06a-41e5-9a76-99751d007181"
* entry[=].resource = 7173b796-e06a-41e5-9a76-99751d007181
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/f1b44794-c0de-4b76-8b7d-8aa15490fc42"
* entry[=].resource = f1b44794-c0de-4b76-8b7d-8aa15490fc42
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/05d07e46-0186-418f-bd8f-552c514cc611"
* entry[=].resource = 05d07e46-0186-418f-bd8f-552c514cc611
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/OperationOutcome/99d258a8-db64-4635-9a5d-354ff0f86b0f"
* entry[=].resource = 99d258a8-db64-4635-9a5d-354ff0f86b0f  

Instance: 99d258a8-db64-4635-9a5d-354ff0f86b0f
InstanceOf: MedComAcknowledgementOperationOutcome
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-acknowledgement-operationoutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.text = "We have a temporary problem with our system. Please try again later. If the problem persists, please contact the system administrator."



Instance: 55fd2956-36c3-4424-8391-07b6cf504274
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(05d07e46-0186-418f-bd8f-552c514cc611)
* sender = Reference(f1b44794-c0de-4b76-8b7d-8aa15490fc42)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #transient-error
* response.details = Reference(99d258a8-db64-4635-9a5d-354ff0f86b0f)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: 96f0682a-9d86-4d97-8f1a-5d2f80a1efd7
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(05d07e46-0186-418f-bd8f-552c514cc611)

Instance: 7173b796-e06a-41e5-9a76-99751d007181
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/55fd2956-36c3-4424-8391-07b6cf504274)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(f1b44794-c0de-4b76-8b7d-8aa15490fc42)
* entity.role = #revision
* entity.what = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: f1b44794-c0de-4b76-8b7d-8aa15490fc42
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 05d07e46-0186-418f-bd8f-552c514cc611
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"