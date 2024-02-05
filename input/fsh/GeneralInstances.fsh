// deceased MedComCorePatient
Instance: 382fb8a3-6725-41e2-a615-2b1cfcfe9931
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// MedComMessagingMessage instance

Instance: eb26be85-fdb7-454d-a980-95cba6d1745b
InstanceOf: MedComMessagingMessage
Description: "Example of an emty message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/3881874e-2042-4a00-aee8-23512799f512"
* entry[=].resource = 3881874e-2042-4a00-aee8-23512799f512
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

// MedComMessagingMessageHeader og MedComMessagingdestinationUseExtension instance

Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

Instance: 3881874e-2042-4a00-aee8-23512799f512
InstanceOf: MedComMessagingMessageHeader
Title: "Message Header for an empty message. Valid only if used in a bundle (message)"
Description: "Message Header for an empty message. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"

// CareCommunication example
Instance: 42cb9200-f421-4d08-8391-7d51a2503cb4
InstanceOf: MedComMessagingMessageHeader
Title: "Message header for care communication message. Valid only if used in a bundle (message)."
Description: "Message header for care communication message. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"

//MedComMessagingOrganization instances (sender, receiver, serviceprovider)

// Reciever instance
Instance: 74cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"
