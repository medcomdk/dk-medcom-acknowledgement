<!-- <a href="https://medcomdk.github.io/MedComLandingPage/">Return</a> -->
<!-- HomePage -->

# MedCom Acknowledgement  
<hr/>

 **Table of contents**
* [1 Standard documentation](#1-standard-documentation)
  * [1.1 Use cases](#11-use-cases)
  * [1.2 Implementation guide](#12-implementation-guide)
* [2 Test and certification](#2-test-and-certification)

<hr/>

  <!-- > Clinical guidelines for application and use cases are in both Danish and English. The remaining documentation will solely be in English.
<br> -->

This page presents MedCom's Acknowledgement FHIR&reg;&copy; standard (Danish: Kvittering). The purpose of the standard is to respond to the reception of the original sent FHIR message and inform the sender, how the FHIR-message was received in the Danish healthcare system. 
The Acknowledgement is sent as a message and therefore follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The Acknowledge message is released when the receiving system receives the originally sent message from the sending system.
The standard will in time replace the existing; EDIFACT<a href="http://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20CONTRL/EDI/Dokumentation/" target="_blank">CTLO1-03</a> and
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

The use cases for the acknowledgement are part of technical uses casese for MedComMessaging. 
<a href="https://medcomdk.github.io/dk-medcom-messaging/#11-uses-cases" target="_blank">Click here to read use cases for the Acknowledgement.</a>  
<!-- Below, you can find the use cases both in Danish and English : -->

<!-- [Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->

### 1.2 Implementation guide
The technical specifications for the Acknowledgement standard is composed by profiles from <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/" target="_blank">MedCom Acknowledgement IG</a> <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a> and <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>

The profiles that are part of the technical specification for Acknowledgement FHIR standard are: 
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html" target="_blank">MedComAcknowledgementMessage</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html" target="_blank">MedComAcknowledgementMessageHeader</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-acknowledgement-operationoutcome.html"> MedComAcknowledgementOperationOutcome</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a>  
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank">MedComMessagingProvenance</a>
<br>
<br>

The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further the structure of the standard is described and supported with examples in different degree of technical skills.
[Click here to read an introduction to the technical specifications.](assets/documents/IntroToTecSpecENG.md)



## 2 Test and certification
A certification of a system implies both an approved test protocol and run-trough of TouchStone test scripts. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. 
<br>
<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank"> You can find a general description of the MedCom test and certification process here.</a> 

<b>The testprotocols and testscripts are currently in preparation. As soon as the test protocols and test scripts are ready, they will be presented below.</b>

<!-- **Sending a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>
 
**Receiving a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p> -->

