Profile: MedComAcknowledgementMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-messaging-acknowledgementHeader
Description: "A resource that describes a reponse to a message that is exchanged as a MedCom messgage within Danish healthcare"
* destination[cc] ..0
* response 1.. MS
* response.identifier MS
* response.code MS
* response.details MS
* response.details ^definition = "Shall contain identified hints/warnings/error in case the code is transient-error or fatal-error"


Instance: ff9055ec-b1f1-48b6-933a-063dff0a6faf
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader -  empty message"
Description: "Acknowledgement MessageHeader - empty message. Valid only if used in a Bundle (message)."
Usage: #inline
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgment-message
* destination[primary].endpoint = "http://medcom.dk/unknown"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcom.dk/unknown"
* response.identifier = "eb26be85-fdb7-454d-a980-95cba6d1745b"
* response.code = $AcknowledgementCode#fatal-error

Instance: b879c81e-0607-4ccb-b358-24a72208e30d
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - fatal-error message"
Description: "Acknowledgement MessageHeader - fatal-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgment-message
* destination[primary].endpoint = "http://medcomfhir.dk/unknown"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(4ecb2a8e-3a68-4083-910e-811296affd43)

Instance: aba2d9bf-2c6c-47e8-bce4-7928bcd51019
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader -  ok message"
Description: "Acknowledgement MessageHeader - ok message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgment-message
* destination[primary].endpoint = "http://medcomfhir.dk/unknown"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "382fb8a3-6725-41e2-a615-2b1cfcfe9931"
* response.code = $AcknowledgementCode#ok

Instance: c9a0b728-0807-11ed-861d-0242ac120002
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Acknowledgement MessageHeader - transient-error message"
Description: "Acknowledgement MessageHeader - transient-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgment-message
* destination[primary].endpoint = "http://medcomfhir.dk/unknown"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#transient-error
* response.details = Reference(d0055484-2a56-4da2-81b8-a9d5087d865c)

Instance: 4ecb2a8e-3a68-4083-910e-811296affd43
InstanceOf: OperationOutcome
Title: "Example of an error operationOutcome"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Error parsing resource XML"
* issue.expression = "Bundle.meta"

Instance: e87bc9d4-f876-4b6f-8585-40b26dc1e369
InstanceOf: OperationOutcome
Title: "Example of an error operationOutcome"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
* issue.severity = $ServerityCode#information
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Invalid messages from sender system"
* issue.expression = "Bundle.meta"

Instance: d0055484-2a56-4da2-81b8-a9d5087d865c
InstanceOf: OperationOutcome
Title: "Example of an error operationOutcome"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Error parsing resource XML"
* issue.expression = "Bundle.meta"


