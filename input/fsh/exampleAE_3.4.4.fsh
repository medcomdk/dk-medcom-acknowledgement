Instance: Ack-3.4.4-A-AE-808722cf-de94-4fff-92a6-721cf4bb4eb1
InstanceOf: MedComAcknowledgementMessage
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgement"
* type = #message
* timestamp = "2025-04-30T09:07:53.2698352+02:00"
* entry[0].fullUrl = "https://medcomfhir.dk/acknowledgement/MessageHeader/da6deacf-7ec0-4f76-a6c1-92ebe772c046"
* entry[=].resource = da6deacf-7ec0-4f76-a6c1-92ebe772c046
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/ac666b83-fcf6-4477-9e7d-0a7a279d2b4e"
* entry[=].resource = ac666b83-fcf6-4477-9e7d-0a7a279d2b4e
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Provenance/01408ffe-7e54-4ed6-8182-ac2ed79c9d35"
* entry[=].resource = 01408ffe-7e54-4ed6-8182-ac2ed79c9d35
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/c461c444-ab08-4e22-a445-72e66978c538"
* entry[=].resource = c461c444-ab08-4e22-a445-72e66978c538
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/Organization/40dbdb60-5dc2-48be-93b0-c7c4325142e5"
* entry[=].resource = 40dbdb60-5dc2-48be-93b0-c7c4325142e5
* entry[+].fullUrl = "https://medcomfhir.dk/acknowledgement/OperationOutcome/1dcaae00-69ee-4105-b28d-2e93548f05c4"
* entry[=].resource = 1dcaae00-69ee-4105-b28d-2e93548f05c4  

Instance: 1dcaae00-69ee-4105-b28d-2e93548f05c4
InstanceOf: MedComAcknowledgementOperationOutcome
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-acknowledgement-operationoutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.text = "The message could not be processed due to an unknown value in the message. Please check the message and resend it."



Instance: da6deacf-7ec0-4f76-a6c1-92ebe772c046
InstanceOf: MedComAcknowledgementMessageHeader
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/acknowledgement/StructureDefinition/medcom-messaging-acknowledgementHeader"
* eventCoding = $MessageEvents#acknowledgement-message
* destination.extension.url = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-destinationUseExtension"
* destination.extension.valueCoding = $Use#primary
* destination.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination.receiver = Reference(40dbdb60-5dc2-48be-93b0-c7c4325142e5)
* sender = Reference(c461c444-ab08-4e22-a445-72e66978c538)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* response.identifier = "7ed8da8d-fd74-4948-bc92-924842b30adf"
* response.code = #fatal-error
* response.details = Reference(1dcaae00-69ee-4105-b28d-2e93548f05c4)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"

Instance: ac666b83-fcf6-4477-9e7d-0a7a279d2b4e
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)
* occurredDateTime = "2024-08-15T12:00:00+02:00"
* recorded = "2024-08-15T12:00:00+02:00"
* activity = $ActivityCode#new-message
* agent.who = Reference(40dbdb60-5dc2-48be-93b0-c7c4325142e5)

Instance: 01408ffe-7e54-4ed6-8182-ac2ed79c9d35
InstanceOf: MedComMessagingProvenance
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-provenance"
* target = Reference(messageheader/da6deacf-7ec0-4f76-a6c1-92ebe772c046)
* occurredDateTime = "2025-04-30T09:09:18.304+02:00"
* recorded = "2025-04-30T09:09:18.304+02:00"
* activity = $ActivityCode#acknowledgement
* agent.who = Reference(c461c444-ab08-4e22-a445-72e66978c538)
* entity.role = #revision
* entity.what = Reference(messageheader/7ed8da8d-fd74-4948-bc92-924842b30adf)

Instance: c461c444-ab08-4e22-a445-72e66978c538
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001353308"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "330461000016004"
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: 40dbdb60-5dc2-48be-93b0-c7c4325142e5
InstanceOf: MedComMessagingOrganization
Usage: #example
* meta.profile = "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-organization"
* identifier[0].system = "https://www.gs1.org/gln"
* identifier[=].value = "5790001987244"
* identifier[+].system = "urn:oid:1.2.208.176.1.1"
* identifier[=].value = "441211000016000"
* name = "Klinik for Ældresygdomme, AUH, Skejby"