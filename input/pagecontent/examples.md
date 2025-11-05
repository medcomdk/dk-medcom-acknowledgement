MedCom uses three types of Acknowledgement messages in FHIR format to confirm the receipt and processing status of messages exchanged between healthcare systems.
The examples below illustrate each acknowledgement type and its typical use case:

## OK - Acknowledgement 
[OK - acknowledgement](Bundle-a8c041b8-c65a-4fde-a90f-962076918834.html)
The OK acknowledgement - indicates that the message was successfully received and processed without errors.

## Transient Error - Acknowledgement
[Transient Error - Acknowledgement](Bundle-c9c2b2f6-0807-11ed-861d-0242ac120002.html)
Transient Error Acknowledgement - indicates that the message was received but a temporary error occurred, and the sender may retry.

## Fatal Eror - Acknowledgment 
[Fatal Error - Acknowledgement](Bundle-bc9535ef-ed94-4060-a928-7baddec7ee71.html)
Fatal Error Acknowledgement – indicates that the message was rejected due to a critical or permanent error and cannot be processed.
