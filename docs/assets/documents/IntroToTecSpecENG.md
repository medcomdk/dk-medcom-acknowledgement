[Return](../../index.md)
# Introduction to the Technical Content
<hr/>

 **Table of Content**
* [1 Profiles in the Acknowledgement Standard](#1-profiles-in-the-acknowledgement-standard)
* [2 General Acknowledgement Messaging Model](#2-general-acknowledgement-messaging-model)
<hr/>

 > In case of discrepancies between the  <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/" target="_blank">Acknowledgement Implementation Guide(IG)</a> and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepandies.

# 1 Profiles in the Acknowledgement Standard
In total two profiles form MedComMessaging IG and MedCom Acknowledgement IG contributes to the Acknowledgement standard. A short describtion of each profile can be seen in the table below. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:70%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-sm6y{background-color:#ffffff;border-color:#000000;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-hrrh{background-color:#ffffff;border-color:#000000;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 1281px">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in Acknowledgement standard</caption>
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
    <th class="tg-sm6y">Implementation Guide Orgin </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgement.html" target="_blank">MedComAcknowledgementMessage</a></td>
    <td class="tg-hrrh">Bundle</td>
    <td class="tg-hrrh">Inherits from MedComMessagingMessage.</td>
    <td class="tg-hrrh">Message Id<br>Type<br>Timestamp<br>Reference to all included profiles</td>
    <td class="tg-hrrh">MedComAcknowledgement</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/StructureDefinition-medcom-messaging-acknowledgementHeader.html" target="_blank">MedComAcknowledgementMessageHeader</a>    </td>
    <td class="tg-hrrh">MessageHeader</td>
    <td class="tg-hrrh">Inherits from MedComMessagingMessageHeader.<br><br> The header of a message that shall be of the type MedComAcknowledgementMessageHeader.</td>
    <td class="tg-hrrh">MessagHeader id<br>Narrative text<br>Type of message<br>Sender Organization<br>Receiver Organization<br><br></td>
    <td class="tg-hrrh">MedComAcknowledgement</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a>  </td>
    <td class="tg-hrrh">Organization</td>
    <td class="tg-hrrh">Inherits from MedComCoreOrganization<br><br>Information useful to identify an organization. In a Acknowledgement message it is used to describe the sender and receiver organizations.<br></td>
    <td class="tg-hrrh">Identifier (SOR-id)<br>Identifier (EAN/GLN-id)<br>Name</td>
    <td class="tg-hrrh">MedComMessaging</td>
  </tr>
  <tr>
    <td class="tg-hrrh"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank">MedComMessagingProvenance</a></td>
    <td class="tg-hrrh">Provenance</td>
    <td class="tg-hrrh">Describes the activity and history of a message.<br> It includes a reference to the target which is the MedComMessageHeader. </td>
    <td class="tg-hrrh">Target<br>Timestamps<br>Activity<br>Actors<br>Reference to the previous message</td>
    <td class="tg-hrrh">MedComMessaging</td>
  </tr>
</tbody>
</table>

>Note:The Acknowledgement standard is inherited from MedCom Messaging, therefore a detailed description of the must support elements can be found on <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank"> technical content of MedCom Messaging.</a>  

# 2 General Acknowledgement Messaging Model
The <a href="#Fig1"> Figure 1</a> illustrates the structure of the Acknowledgement message.The Acknowledgement message follows <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank">MedCom's FHIR messaging model</a> except from the carbon-copy destination, that is not allowed. 

<figure>
<img src="../Images/MedComAcknowledgementMessage.png" alt="Show references between the profiles in an HospitalNotification message." style="width:50%" id="Fig1">
<figcaption text-align="center"><b>Figure 1: Structure of the Acknowledgement message </b> </figcaption>
</figure>

