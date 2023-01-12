<!-- <a href="https://medcomdk.github.io/MedComLandingPage/">Return</a> -->
<!-- HomePage -->

# MedCom Acknowledgement  

 **Table of contents**
* [1 Standard documentation](#1-standard-documentation)
  * [1.1 Use cases](#11-use-cases)
  * [1.2 Technical specification](#12-technical-specification)
* [2 Test and certification](#2-test-and-certification)


  <!-- > Clinical guidelines for application and use cases are in both Danish and English. The remaining documentation will solely be in English.
<br> -->

This page presents MedCom's Acknowledgement FHIR&reg;&copy; standard (Danish: Kvittering). An Acknowledgement message corresponds to a receipt of a delivered message. Every time a system receives a MedCom FHIR message, e.g. a HospitalNotification or a CareCommunication, it shall be acknowledged with a MedCom Acknowledgement message, stating if the transfer was successful and the message validated correctly or not. In other words, does a MedCom Acknowledgement message hold information about how delivery of a message went. [MedCom FHIR messaging complies with reliable messaging and associated governance](https://medcomdk.github.io/MedCom-FHIR-Communication/#network-layer), which describes the value and needs for acknowledge all messages.

The Acknowledgement is sent as a message and therefore follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The Acknowledge message is released when the receiving system receives the originally sent message from the sending system.
The standard will in time replace the existing; EDIFACT <a href="http://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20CONTRL/EDI/Dokumentation/" target="_blank">CTLO1-03</a> and
<a href="http://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20CONTRL/XML/Dokumentation/" target="_blank">XCTLO1-03</a>.


## 1 Standard documentation 
The standard documentation below provides the necessary content to understand the needs for modernisation, the role of the Acknowledgement message, what to implement and how to get a MedCom certificate. The standard documentation for Acknowledgement includes:
  * Use cases
  * Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
<p>&nbsp;</p>

<!-- ### 1.1 Clinical Guidelines 
The clinical guidelines is the foundation for the *STANDARDNAME* standard. It describes the clinical needs for the modernization, the requirement for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for *STANDARDNAME*. It is important for both implementers and business specialists to understand the clinical guidelines to ensure that the implemented standard supports the requirements.

Below can the clinical guidelines in Danish and English be found:

[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines](assets/documents/Clinical-guidelines-ENG.md)  -->

### 1.1 Use cases
Use cases describe the different scenarios in which a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the Acknowledgement. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions, hospitals and municipalities.

The use cases for the acknowledgement are part of technical uses casese for MedComMessaging.<br> 
<a href="https://medcomdk.github.io/dk-medcom-messaging/#11-uses-cases" target="_blank">Click here to read use cases for the Acknowledgement.</a>  
<!-- Below, you can find the use cases both in Danish and English : -->

<!-- [Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->

### 1.2 Technical specification
The technical specifications for the Acknowledgement standard are composed by profiles from <a href="https://medcomfhir.dk/ig/acknowledgement/" target="_blank">MedCom Acknowledgement IG</a>, <a href="https://medcomfhir.dk/ig/messaging/" target="_blank">MedCom Messaging IG</a> and <a href="https://medcomfhir.dk/ig/terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>

The profiles that are part of the technical specification for Acknowledgement FHIR standard are: 
* <a href="https://medcomfhir.dk/ig/acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html" target="_blank">MedComAcknowledgementMessage</a>
* <a href="https://medcomfhir.dk/ig/acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html" target="_blank">MedComAcknowledgementMessageHeader</a>
* <a href="https://medcomfhir.dk/ig/acknowledgement/StructureDefinition-medcom-acknowledgement-operationoutcome.html"> MedComAcknowledgementOperationOutcome</a>
* <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a>  
* <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank">MedComMessagingProvenance</a>
<br>
<br>

The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further the structure of the standard is described and supported with examples in different degree of technical skills. <br>
[Click here to read an introduction to the technical specifications.](assets/documents/IntroToTecSpecENG.md)



## 2 Test and certification
A certification of a system implies both an approved test protocol and run-trough of TouchStone test scripts. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. 
<br>
<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank"> You can find a general description of the MedCom test and certification process here.</a> 

> Note: Testprotocols for Acknowledgement in English, are currently in preparation. As soon as they are, ready they will be published.

**Sending an Acknowledgement**
* [Test protocol](FHIR-acknowledgement_afsendelse_testprotokol.docx) 
* TouchStone Test scripts - link will be provided soon
<p>&nbsp;</p>

**Receiving an Acknowledgement**
* [Test protocol](FHIR-acknowledgement_modtagelse_testprotokol.docx) 
* TouchStone Test scripts - link will be provided soon

