Profile: MedComAcknowledgementOperationOutcome
Parent: OperationOutcome
Id: medcom-acknowledgement-operationoutcome
Description: "This profile provides detailed information about the outcome of an attempted system operation, such as delivering a message. It shall only be used when the attempt fails."
* issue MS
* issue.severity MS
* issue.code MS
* issue.details MS
* issue.details.coding MS
* issue.details.text MS
* issue.details.coding from $IssueValues


Instance: becb2a8e-3a68-4083-910e-811296affd43
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.coding = $IssueCodes#testing-error

Instance: a87bc9d4-f876-4b6f-8585-40b26dc1e369
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'information'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#information
* issue.code =  $CodeCode#informational
* issue.details.coding = $IssueCodes#testing-error


Instance: c0055484-2a56-4da2-81b8-a9d5087d865c
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#value
* issue.details.coding = $IssueCodes#testing-error


