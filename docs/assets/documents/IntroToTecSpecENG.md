[Return](../../index.md)
# Introduction to the Technical Content

> In case of discrepancies between the  <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-acknowledgement/" target="_blank">Acknowledgement Implementation Guide(IG)</a> and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepandies.


# Profiles in the Acknowledgement Standard
In total two profiles form MedComMessaging IG and MedCom Acknowledgement IG contributes to the Acknowledgement standard. A short describtion of each profile can be seen in the table below. 
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:80%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-ztr9{border-color:#000000;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-on52{border-color:#000000;color:#333333;text-align:left;vertical-align:top}
.tg .tg-73oq{border-color:#000000;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 1256px">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in Acknowledgement standard</caption>
<colgroup>
<col style="width: 277px">
<col style="width: 114px">
<col style="width: 430px">
<col style="width: 232px">
<col style="width: 203px">
</colgroup>
<thead>
  <tr>
    <th class="tg-ztr9">Profile</th>
    <th class="tg-ztr9">Resource</th>
    <th class="tg-ztr9">Description</th>
    <th class="tg-ztr9">MustSupportelements</th>
    <th class="tg-ztr9">Implementation Guide Orgin </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-on52">MedComAcknowledgmentMessage</td>
    <td class="tg-on52">Bundle</td>
    <td class="tg-on52">Inherits from MedComMessagingMessage</td>
    <td class="tg-on52">Message Id<br>Timestrap<br>Reference to all included profiles</td>
    <td class="tg-on52">MedComAcknowledgment</td>
  </tr>
  <tr>
    <td class="tg-on52">MedComAcknowledgmentMessageHeader</td>
    <td class="tg-on52">MessageHeader</td>
    <td class="tg-on52">The header of a message that shall be of&nbsp;&nbsp;the type MedComAcknowledgmentMessageHeader. <br><br>Inherits from MedComMessagingMessageHeader</td>
    <td class="tg-on52">MessagHeader id<br>Narrative text<br>Type of message<br>Sender Organization<br>Receiver Organization<br><br></td>
    <td class="tg-on52">MedComAcknowledgment</td>
  </tr>
  <tr>
    <td class="tg-on52">MedComMessagingeOrganization</td>
    <td class="tg-on52">Organization</td>
    <td class="tg-on52">Information useful to identify an organization. In a Acknowledgement message it is used to describe the service provider organization <br></td>
    <td class="tg-on52">Identifier (SOR-id)<br>Identifier (EAN/GLN-id)<br>Name</td>
    <td class="tg-on52">MedComMessaging</td>
  </tr>
  <tr>
    <td class="tg-73oq">MedComMessagingProvenance</td>
    <td class="tg-73oq">Provenance</td>
    <td class="tg-73oq">Describes the activity and history of a message. It<br>includes a reference to the target which is the MedComMessageHeader. </td>
    <td class="tg-73oq">Target<br>Timestamps<br>Activity<br>Actors<br>Reference to the previous message</td>
    <td class="tg-73oq">MedComMessaging</td>
  </tr>
</tbody>
</table>

# Release Notes
[Updates in the latest release.](../../ReleaseNoteTechSpec.md)
