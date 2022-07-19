# MedCom GitHub Pages 
<!-- HomePage -->
This FHIR&reg;&copy; standard is developed by [MedCom](https://www.medcom.dk/). 

*Short description concerning the purpose of the standard. Remember to include both the English and Danish name of the standard.*

*Create an item list with the profiles this IG includes.*
 
 <!-- below is the table of content. Ensure to update it. -->
<style>
  ol {
    counter-reset: item
    
    }
  li {
    display: block
    }
  li:before {
    content: counters(item, ".")" ";
    counter-increment: item
  }
</style>

**Table of Content**

<!--<ol>
  <li> <a href="#1-documentation"> Dokumentation </a>  
  <ol>
    <li> <a href="#11-non-technical-guidelines"> Non-technical guideline</a>
      <li> <a href="#12-use-cases">Use Cases</a></li>
      <li> <a href="#13-implementation-guide">Implementation Guide </a> 
        <ol>
        <li> <a href="#131-introduction-to-the-technical-specifications">Introduction to the Technical Specifications</a></li>
        </ol>
      </li>
      <li> <a href="#14-syntacs-and-communication-rules">Syntacs and Communication rules</a></li>
      <li> <a href="#15-other-documentation">Other Documentations</a></li>
    </li>
  </ol>
  </li>
  <li> <a href="#3-test-and-certification">Test and Certification</a>
    <ol>
      <li> <a href="#21-testprotocol">Testprotocol</a></li>
    </ol>
  </li>
  <li> <a href="#6-release-notes">Release Notes</a></li> 
  <li> <a href="#4-support-or-contact">Support or Contact</a></li>
</ol>
-->


> Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.

## 1 Standard Documentation 
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the *STANDARDNAME* message, what to implement and how to get a MedCom certificate. The standard documentation for *STANDARDNAME* includes:
  * Clinical Guidelines
  * Use cases
  * Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
  * *mention other relevant documentation*
 
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

IGs might be difficult for people with little or no knowledge about FHIR and how to understand an IG. Therefore has MedCom developed a webpage describing the content of the *STANDARDNAME* standard. The link below gives an overview of which profiles are included, what their purpose are, and which elements that shall be supported in a system. Further the structure of the standard is described and supported with examples in different degree of technical skills.

[An introduction to the technical specificationscan be found here.]((assets/documents/Intro-Technical-Spec-ENG.md))

## 2 Test and Certification

Find a general description of MedCom test and certification [here](https://tmsmedcom.github.io/GitHubPagesTest/#test-and-certification). 

**Sending a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
 
**Receiving a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts

## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md)
