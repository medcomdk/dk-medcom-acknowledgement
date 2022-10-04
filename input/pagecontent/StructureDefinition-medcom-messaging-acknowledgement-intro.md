### Scope and usage 
This profile is the root profile of MedCom Acknowledgement message. Constraint and rules from MedComMessagingMessage are inherited to this profile. The only change is that the MessageHeader shall be a MedComAcknowledgementMessageHeader. 

__Note:__ Be aware that entries in a message in general are unordered. Recipients of a message can therefore not assume any particular sequences of elements.

Below can the structure of a MedCom Acknowledgement message be seen.

<img alt="MedComAcknowledgementMessage is the root profile. From this is the MedComMessagingProvenance and MedComAcknowledgementMessageHeader referenced. The MedComAcknowledgementMessageHeader includes references to the MedComMessagingOrganization. Additionally, it is possible to include an OperationOutCome profile, referenced from MedComAcknowledgementMessageHeader." src="./MedComAcknowledgementMessage.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComAcknowledgementMessage.
