Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 69dab277-dd4b-4055-9fda-a10a65cb4412
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(4aa2d9bf-2c6c-47e8-bce4-7928bcd51019)
* occurredDateTime = 2020-09-28T12:34:57Z
* recorded = 2020-09-28T12:34:57Z
* activity.coding = $ActivityCode#acknowledgment
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

Instance: 9c56ba88-9645-11ec-b909-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(4879c81e-0607-4ccb-b358-24a72208e30d)
* occurredDateTime = 2020-09-28T12:34:57Z
* recorded = 2020-09-28T12:34:57Z
* activity.coding = $ActivityCode#acknowledgment
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)