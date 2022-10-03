[Return](../../index.md)
# Introduction to the technical specification
<hr/>

 **Table of contents**
* [1 Profiles in the Acknowledgement Standard](#1-profiles-in-the-acknowledgement-standard)
  * [1.1 Codes for detailed error description](#11-codes-for-detailed-error-description)
* [2 General Acknowledgement Messaging Model](#2-general-acknowledgement-messaging-model)
<hr/>

 > In case of discrepancies between the  <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/" target="_blank">Acknowledgement Implementation Guide(IG)</a> and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepancies.

# 1 Profiles in the Acknowledgement Standard
The Acknowledgement standard is based on  profiles from, respectively <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/" target="_blank">MedCom Acknowledgement IG</a> <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a>. A short description of each profile can be seen in the <a href="#Tab1"> Table 1</a>. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:70%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-sm6y{background-color:#ffffff;border-color:#000000;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-hrrh{background-color:#ffffff;border-color:#000000;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 1281px" id="Tab1">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in the Acknowledgement standard</caption>
<colgroup>
<col style="width: 291px">
<col style="width: 115px">
<col style="width: 435px">
<col style="width: 235px">
<col style="width: 205px">
</colgroup>
<thead>
  <tr>
    <th class="tg-sm6y">Profile</th>
    <th class="tg-sm6y">Resource</th>
    <th class="tg-sm6y">Description</th>
    <th class="tg-sm6y">MustSupportelements</th>
    <th class="tg-sm6y">Implementation Guide Origin </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html" target="_blank">MedComAcknowledgementMessage</a></td>
    <td class="tg-hrrh">Bundle</td>
    <td class="tg-hrrh">Inherits from MedComMessagingMessage.</td>
    <td class="tg-hrrh">Id (Message Id)<br>Type<br>Timestamp<br> entry (Reference to all included profiles)</td>
    <td class="tg-hrrh">MedComAcknowledgement</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html" target="_blank">MedComAcknowledgementMessageHeader</a>    </td>
    <td class="tg-hrrh">MessageHeader</td>
    <td class="tg-hrrh">Inherits from MedComMessagingMessageHeader.<br><br> The header of a message that shall be of the type MedComAcknowledgementMessageHeader.</td>
    <td class="tg-hrrh">Id (MessagHeader id)<br>Text (Narrative text)<br>eventCoding (Type of message)<br> Sender (Sender Organization)<br>Receiver (Receiver Organization<br>Response identifier (id)<br> Response code</td>
    <td class="tg-hrrh">MedComAcknowledgement</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-acknowledgement-operationoutcome .html" target="_blank">MedComAcknowledgementOperationOutcome</a>    </td>
    <td class="tg-hrrh">OperationOutcome</td>
    <td class="tg-hrrh">Includes a detailed description of the error and the severity of the error. It shall always be included when an error occurs in the message exchange.</td>
    <td class="tg-hrrh">Issue Severity (Servity of the error)<br>Issue code (Error code)<br>details (Detailed error description)<br></td>
    <td class="tg-hrrh">MedComAcknowledgement</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a>  </td>
    <td class="tg-hrrh">Organization</td>
    <td class="tg-hrrh">Inherits from MedComCoreOrganization<br><br>Information useful to identify an organization. In a Acknowledgement message it is used to describe the sender and receiver organizations.<br></td>
    <td class="tg-hrrh">Text (Narrative text)<br>Slices for identifier (SOR-id)<br>Slices for identifier (EAN/GLN-id)<br>Name</td>
    <td class="tg-hrrh">MedComMessaging</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank">MedComMessagingProvenance</a></td>
    <td class="tg-hrrh">Provenance</td>
    <td class="tg-hrrh">Describes the activity and history of a message.<br> It includes a reference to the target which is the MedComMessageHeader. </td>
    <td class="tg-hrrh">Text (Narrative text)<br>Target<br>OccurredDateTime <br>Timestamps<br>Activity<br>Agent<br>Entity (Reference to the previous message)</td>
    <td class="tg-hrrh">MedComMessaging</td>
  </tr>
</tbody>
</table>

>Note:The Acknowledgement standard is inherited from MedCom Messaging.Therefore a detailed description of the MustSupport elements can be found on the <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank"> technical content of MedCom Messaging.</a>  

## 1.1 Codes for detailed error description

The ValueSet used for detailed error description, in the element OperationOutCome.issue.details.coding, is currently fairly empty, as MedCom wants input from IT-vendors on which codes give values in their systems. Across sectors there must be an agreed list of codes. 

# 2 General Acknowledgement Messaging Model
<a href="#Fig1"> Figure 1</a> illustrates the structure of the Acknowledgement message. The Acknowledgement message follows <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank">MedCom's FHIR messaging model</a> except  the carbon-copy destination, which is not allowed. 

<figure>
<img src="../Images/MedComAcknowledgementMessage.png" alt="Show references between the profiles in an HospitalNotification message." style="width:50%" id="Fig1">
<figcaption text-align="center"><b>Figure 1: Structure of the Acknowledgement message </b> </figcaption>
</figure>

