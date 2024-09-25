Profile: MedComAcknowledgementMessageDefinition
Parent: MedComMessagingMessageDefinitionFhir
Id: medcom-acknowledgement-message-definition
Description: "The MessageDefinition for a MedCom Acknowledgement message"
* id = "MedComAcknowledgementMessageDefinition"
* url = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:acknowledgement:2.0"
* identifier.period.start = "2024-06-18"
* identifier.use = #official 
* identifier.value = "Acknowledgement"
* version = "2.0"
* title = "Acknowledgement 2.0"
* status = #active
* date = "2024-09-04"
* copyright = "Copyright © 2024 MedCom"
//* publisher = "MedCom"
//InteroperabilityConsultant
* contact[InteroperabilityConsultant].name = "Thea Sørensen"
//* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
//* contact[InteroperabilityConsultant].telecom.use = #work
* description = "DK: Acknowledgement (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Alle sundhedsvæsnets parter der er involverede i behandling og omsorg af borgere eller patienter, herunder læger, hjemmepleje, fysioterapeuter, ergoterapeuter, plejeteam, sygeplejersker, psykologer, psykiater og mange flere. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: At kvittere for en modtaget meddelelse samt, om overførslen af meddelelsen var vellykket, og om meddelelsen validerede korrekt eller ej. MedCom Acknowledgement standard skal sendes hver gang et system har modtaget en MedCom FHIR-meddelelse eksempelvis HospitalNotification og CareCommunication. (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#acknowledgement-message "Acknowledgement Message"
* responseRequired = #never
//* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0"
//* allowedResponse[+].message.value = "http://medcomfhir.dk/ig/acknowledgement/ImplementationGuide/medcom.fhir.dk.acknowledgement"
//* allowedResponse[+].message.value = "http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-message"

