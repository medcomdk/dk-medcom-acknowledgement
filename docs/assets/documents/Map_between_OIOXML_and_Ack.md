[Return](../../index.md)
# Map between OIOXML XCTL01 and MedCom Acknowledgement message

This document describes mapping between the OIOXML XCTRL01 (Danish: Kvittering) (<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20CONTRL/XML/Dokumentation/XCTL01.pdf" target="_blank">XCT01</a>) and the MedCom Acknowledgement message. Not all elements from OIOXML XCTRL01 are relevant in MedCom Acknowledgement message, which is marked with a ‘NA’. The purpose of this document is to help implementers of MedCom Acknowledgement message. The actual implementation guide which includes all requirements for the MedCom Acknowledgement can be found <a href="https://medcomfhir.dk/ig/acknowledgement/" target="_blank">here</a> 

> Please notice, that the expressions in ‘Actual FHIR path’ are made using the windows app called FHIRPath tester. In other applications, are the apostrophe ( ‘…’ ) might not used.


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-qd85{background-color:#002134;border-color:inherit;color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
<thead>
  <tr>
    <th class="tg-qd85" rowspan="2">Data</th>
    <th class="tg-qd85" rowspan="2">OIOXML</th>
    <th class="tg-qd85">Pseudo FHIR   path</th>
    <th class="tg-qd85" rowspan="2">Must Support</th>
    <th class="tg-qd85" rowspan="2">Comment </th>
  </tr>
  <tr>
    <th class="tg-qd85">Actual FHIR path</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky" rowspan="2">Date for message sent </td>
    <td class="tg-0pky" rowspan="2">Emessage.Envelope.Sent.Dato</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.timestamp</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="4">A FHIR Timestamp contain both date and time, and&nbsp;&nbsp;&nbsp;contain information about when a bundle is created. </td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.timestamp</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Time for message sent</td>
    <td class="tg-0pky" rowspan="2">Emessage.Envelope.Sent.Time</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.timestamp</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.timestamp</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Message envelope id</td>
    <td class="tg-0pky" rowspan="2">Emessage.Envelope.Identifier</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.id</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">A uniqe identifier for a bundle. The&nbsp;&nbsp;&nbsp;MedComAcknowledgementMessage.id must be updated with a new value, each time a&nbsp;&nbsp;&nbsp;new message is sent, or a message is resent. </td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.id</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Acknowledgement Code</td>
    <td class="tg-0pky" rowspan="2">Emessage.Envelope.&nbsp;&nbsp;&nbsp;AcknowledgementCode </td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComAcknowledgementMessageHeader.response.code  And&nbsp;&nbsp;&nbsp;MedComAcknowledgementMEssage.MedComAcknowledgementMessageHeader.response.details.MedComAcknowledgementOperationOutcome.issue</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">The&nbsp;&nbsp;&nbsp;main response code is included in the MedComAcknowledgementMessageHeader.&nbsp;&nbsp;&nbsp;When the response code is other than OK, it may be elaborated in the&nbsp;&nbsp;&nbsp;MedComAcknowledgementOperationOutcome profile. </td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.resource.ofType('MessageHeader').response.code&nbsp;&nbsp;&nbsp;And Bundle.entry.resource.of.type('OperationOutcome').issue</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Message letter id </td>
    <td class="tg-0pky" rowspan="2">Emessage.PositiveReceipt.Letter.Identifier</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComAcknowledgementMessageHeader.id</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2"> <br></td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.resource.ofType('MessageHeader').id</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Version code</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositiveReceipt.Letter.VersionCode</td>
    <td class="tg-0pky" rowspan="2">NA</td>
    <td class="tg-0pky" rowspan="2"> <br></td>
    <td class="tg-0pky" rowspan="2">The&nbsp;&nbsp;&nbsp;version of a FHIR message can be found in the respective Implementation Guide&nbsp;&nbsp;&nbsp;but is not included when exchanging a message </td>
  </tr>
  <tr>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Statistical code</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositiveReceipt.Letter.StatisticalCode</td>
    <td class="tg-0pky" rowspan="2">NA</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">Only VANSEnvlope contains a statistical&nbsp;&nbsp;&nbsp;code. </td>
  </tr>
  <tr>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">EAN id  for sender</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositivReceipt.Sender.EANIdentifier</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComAcknowledgementMessageHeader.sender.MedComMessagingOrganization.identifier.eanIdentifier</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">The&nbsp;&nbsp;&nbsp;EAN identifier for a sending organisation</td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.where(fullUrl=%resource.entry.resource[0].sender.reference).resource.identifier.where(system='https://www.gs1.org/gln').value</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">EAN id  for receiver</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositivReceipt.Receiver.EANIdentifier</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComAcknowledgementMessageHeader.destination.primary.receiver.MedComMessagingOrganization.identifier.eanIdentifier</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">The&nbsp;&nbsp;&nbsp;EAN identifier for a receiving organisation. </td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.where(fullUrl=%resource.entry.resource[0].destination.receiver.reference).resource.identifier.where(system='https://www.gs1.org/gln').value</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Orginal Message id</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositivReceipt.OriginalEmessage.OriginalLetter</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComMessagingProvenance.entity.what.reference</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2"> <br></td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.resource.ofType('Provenance').entity.what.reference</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Orginal sender Id</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositivReceipt.OriginalEmessage.OriginalSender</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComAcknowledgementMessageHeader.destination.primary.reciver.MedComMessagingOrganization.identifier</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">The Id of the original receiver i the same&nbsp;&nbsp;&nbsp;id  as for the receiver of the&nbsp;&nbsp;&nbsp;Acknowledgement  </td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.where(fullUrl =&nbsp;&nbsp;&nbsp;%resource.entry.resource[0].destination.receiver.reference).resource.identifier.where(system&nbsp;&nbsp;&nbsp;= 'https://www.gs1.org/gln').value</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Orginal reciver Id</td>
    <td class="tg-0pky" rowspan="2">Emessage.PositivReceipt.OriginalEmessage.OriginalReceiver</td>
    <td class="tg-0pky">MedComAcknowledgementMessage.MedComAcknowledgementMessageHeader.sender.MedComMessagingOrganization.identifier</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">The Id of the original receiver i the same&nbsp;&nbsp;&nbsp;id  as for the sender of the&nbsp;&nbsp;&nbsp;Acknowledgement  </td>
  </tr>
  <tr>
    <td class="tg-0pky">Bundle.entry.where(fullUrl =&nbsp;&nbsp;&nbsp;%resource.entry.resource[0].sender.reference).resource.identifier.where(system&nbsp;&nbsp;&nbsp;= 'https://www.gs1.org/gln').value</td>
  </tr>
</tbody>
</table></div>
