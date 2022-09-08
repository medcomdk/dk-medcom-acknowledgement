<!-- <a href="https://medcomdk.github.io/MedComLandingPage/">Return</a> -->
<!-- HomePage -->

# MedCom Acknowledgement  
<hr/>

 **Table of Content**
* [1 Standard Documentation](#1-standard-documentation)
  * [1.1 Use Cases](#11-use-cases)
  * [1.2 Implementation Guide](#12-implementation-guide)
* [2 Test and Certification](#2-test-and-certification)

<hr/>

  > Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.
<br>

This page presents [MedCom's](https://www.medcom.dk/) Acknowledgement FHIR&reg;&copy; standard (Dansk: Kvittering). The purpose of the standard is to respond to the reception of the original sent FHIR message, and inform how it was received in the Danish healthcare system, that is, did the original message comply with the profile, and was the receiving system able to save the message data into the system. The Acknowledgement is sent as a message and therefore follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The Acknowledge message is released when the receiving system receives the originally sent message from the sending system.
The standard will in time replace the existing standards called <a href="http://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20CONTRL/XML/Dokumentation/" target="_blank">XCTLO2</a> &
<a href="http://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20CONTRL/XML/Dokumentation/" target="_blank">XCTLO2</a>.

The Acknowledgement FHIR standard contains following profiles: 
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html" target="_blank">MedComAcknowledgementMessage</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html" target="_blank">MedComAcknowledgementMessageHeader</a>
<br>
<br>

## 1 Standard Documentation 
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the Acknowledgement message, what to implement and how to get a MedCom certificate. The standard documentation for Acknowledgement includes:
  * Use cases
  * Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
<p>&nbsp;</p>

<!-- ### 1.1 Clinical Guidelines 
The clinical guidelines is the foundation for the *STANDARDNAME* standard. It describes the clinical needs for the modernization, the requirement for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for *STANDARDNAME*. It is important for both implementers and business specialists to understand the clinical guidelines to ensure that the implemented standard supports the requirements.

Below can the clinical guidelines in Danish and English be found:

[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines](assets/documents/Clinical-guidelines-ENG.md)  -->

### 1.1 Use Cases
Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the Acknowledgement. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for the acknowledgement are part of technical usescasese for MedComMessaging. 
<a href="https://medcomtest.sharepoint.com/sites/FHIR-ModerniseringafMedComStandarder/Delte%20dokumenter/Forms/AllItems.aspx?id=%2Fsites%2FFHIR%2DModerniseringafMedComStandarder%2FDelte%20dokumenter%2FArbejde%20med%20use%20case%20skabelon%2FGenerelle%20tekniske%20use%20cases%20v1%2E0%2E0%2Drc%2E1%2Epdf&parent=%2Fsites%2FFHIR%2DModerniseringafMedComStandarder%2FDelte%20dokumenter%2FArbejde%20med%20use%20case%20skabelon&p=true&wdLOR=c639CCA73%2D6C01%2D41CA%2DA05C%2D0E8385E7C85B&ct=1660113451968&or=Outlook-Body&cid=D6A4ACBD-5C6D-468E-95D3-DFF450AAAD62&ga=1" target="_blank">Click here to read the use cases for the Acknowledgement.</a>  
<!-- Below can the use cases in Danish and English be found: -->

<!-- [Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->

### 1.2 Implementation Guide
The technical specifications for the Acknowledgement standard are defined in IGs. As mentioned previously is the Acknowledgement standard composed by profiles from two IGs and terminology from one IG. Links to the IG’s are listed below:
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/" target="_blank">MedCom Acknowledgement IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>

IGs might be difficult for people with little or no knowledge about FHIR and how to understand an IG. Therefore has MedCom developed a webpage describing the content of the Acknowledgement standard. The link below gives an overview of which profiles are included, what their purpose are, and which elements that shall be supported in a system. Further the structure of the standard is described and supported with examples in different degree of technical skills.

[An introduction to the technical specifications can be found here.](assets/documents/IntroToTecSpecENG.md)

## 2 Test and Certification
Certification of a system implies both an approved testprotocol and run-trough of TouchStone testscripts. TouchStone describes an infrastructure that allows for automated test and validation against the IGs developes by MedCom. 
<br>
<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank"> Find a general description of MedCom test and certification proces here.</a> 

<b>The testprotocols and testscripts are currently in preparation. As soon as the tesprotocols and testscripts are reday, they will be presented below.</b>

<!-- **Sending a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>
 
**Receiving a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p> -->

