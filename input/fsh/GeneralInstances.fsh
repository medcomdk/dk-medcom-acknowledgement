// deceased MedComCorePatient
Instance: 382fb8a3-6725-41e2-a615-2b1cfcfe9931
InstanceOf: MedComCorePatient
Title: "Erik Clausen"
Description: "Patient deceased with a managing organization. Valid only if used in a bundle (message)."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0101010141"
* name[official].use = #official
* name[official].given = "Erik"
* name[official].family = "Clausen"
* telecom.system = #phone
* telecom.value = "24533421"
* telecom.use = #home
* address.line = "Forskerparken 10"
* address.city = "Odense M"
* address.postalCode = "5230"
* deceasedBoolean = true

// MedComMessagingMessage instance

Instance: eb26be85-fdb7-454d-a980-95cba6d1745b
InstanceOf: MedComMessagingMessage
Description: "Example of an emty message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[+].fullUrl = "MessageHeader/3881874e-2042-4a00-aee8-23512799f512"
* entry[=].resource = 3881874e-2042-4a00-aee8-23512799f512
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d

// MedComMessagingMessageHeader og MedComMessagingDestinationUseExtension instance

Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

Instance: 3881874e-2042-4a00-aee8-23512799f512
InstanceOf: MedComMessagingMessageHeader
Title: "Message Header for an empty message. Valid only if used in a bundle (message)"
Description: "Message Header for an empty message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"

// CareCommunication example
Instance: 42cb9200-f421-4d08-8391-7d51a2503cb4
InstanceOf: MedComMessagingMessageHeader
Title: "Message header for care communication message. Valid only if used in a bundle (message)."
Description: "Message header for care communication message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"

//MedComMessagingOrganization instances (sender, receiver, serviceprovider)

// Reciever instance
Instance: 74cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "543210987654321"
* identifier[EAN-ID].value = "5790000121526"
* name = "Receiver Organization"

// Sender instance
Instance: d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "123456789012345"
* identifier[EAN-ID].value = "5790001382445"
* name = "Sender Organization"

// Service provider instance
Instance: bf839e87-4e44-4977-b38e-92b5a6f187b5
InstanceOf: MedComMessagingOrganization
Title: "Example of a service provider organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325421000016001"
* identifier[EAN-ID].value = "5798002472264"

