<a href="https://medcomdk.github.io/MedComLandingPage/">Return</a>

# MedCom Acknowledgement - WORK IN PROGRESS! 
<!-- HomePage -->
This page presents MedComs Acknowledgement FHIR&reg;&copy; standard (Dansk: Kvittering). The purpose of the standard is to inform how the delivery of the FHIR message went in the Danish healthcare system.
The Acknowledgement is send as a message and therfore follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed.
The Acknowledge message is released when the receiving system receives the sent message from the sending system.

The Acknowledgement FHIR standard contains following profiles: 
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html" target="_blank">MedComAcknowledgementMessage</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html" target="_blank">MedComAcknowledgementMessageHeader</a>


 ; standard is developed by [MedCom](https://www.medcom.dk/). 



Acknowledgement in message based exchange of data in Danish healthcare. A MedCom Acknowledgement message corresponds to a receipt of a delivered message, and is used to keep track of the messages. Every MedCom FHIR message shall be acknowledged with a MedCom Acknowledgement message, as it holds information about how the delivery of the message went.





*Short description concerning the purpose of the standard. Remember to include both the English and Danish name of the standard.*

*Create an item list with the profiles this IG includes.*
 
**Table of Content**
* [1 Standard Documentation](#1-standard-documentation)
  * [1.1 Clinical Guidelines](#11-clinical-guidelines)
  * [1.2 Use Cases](#12-use-cases)
  * [1.3 Implementation Guide](#13-implementation-guide)
* [2 Test and Certification](#2-test-and-certification)
* [3 Release Notes](#3-release-notes)


> Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.

## 1 Standard Documentation 
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the *STANDARDNAME* message, what to implement and how to get a MedCom certificate. The standard documentation for *STANDARDNAME* includes:
  * Clinical Guidelines
  * Use cases
  * Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
  * *mention other relevant documentation*
<p>&nbsp;</p>

### 1.1 Clinical Guidelines 

The clinical guidelines is the foundation for the *STANDARDNAME* standard. It describes the clinical needs for the modernization, the requirement for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for *STANDARDNAME*. It is important for both implementers and business specialists to understand the clinical guidelines to ensure that the implemented standard supports the requirements.

Below can the clinical guidelines in Danish and English be found:

[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines](assets/documents/Clinical-guidelines-ENG.md) 

### 1.2 Use Cases

Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the *STANDARDNAME*. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for HospitalNotification are qualified in collaboration with EPR- and vendors catering to the municipalities.

Below can the use cases in Danish and English be found:

[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md) 

### 1.3 Implementation Guide
The technical specifications for the *STANDARDNAME* standard are defined in IGs. As mentioned previously is the *STANDARDNAME* standard composed by profiles from *NUMBER* IGs and terminology from one IG. Links to the IG’s are listed below:

  * *Insert link to ImplemantationGuides*
<p>&nbsp;</p>

IGs might be difficult for people with little or no knowledge about FHIR and how to understand an IG. Therefore has MedCom developed a webpage describing the content of the *STANDARDNAME* standard. The link below gives an overview of which profiles are included, what their purpose are, and which elements that shall be supported in a system. Further the structure of the standard is described and supported with examples in different degree of technical skills.

[An introduction to the technical specifications can be found here.](assets/documents/IntroToTecSpecENG.md)

## 2 Test and Certification

Find a general description of MedCom test and certification [here](https://tmsmedcom.github.io/GitHubPagesTest/#test-and-certification). 

**Sending a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>
 
**Receiving a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>

## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md)
