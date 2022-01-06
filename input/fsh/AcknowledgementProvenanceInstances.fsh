// Admit instance
Instance: d7cf3888-6f42-4e4d-929c-d2475d24fba0
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) -admit inpatient"
Usage: #example
* target = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// CareCommunication reply example
Instance: f18213f8-2e2c-458d-86ff-4e48ac5d7162
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 2cdc0086-a305-4791-93e5-3ca8975e2248
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for a medcom acknowledgement message - CareCommunication. 04ed814c-ccf6-47aa-be73-ae38df23c66a"
Description: "Provenance information for a medcom acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(ff9055ec-b1f1-48b6-933a-063dff0a6faf)
* occurredDateTime = 2020-09-28T12:34:57Z
* recorded = 2020-09-28T12:34:57Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)

Instance: 30c0f779-783f-46b2-b38f-faebd2bedb3f
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Usage: #example
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

Instance: 0b9da9ed-cbb2-4563-90d5-d64a67834ec0
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for a medcom acknowledgement message - CareCommunication. 04ed814c-ccf6-47aa-be73-ae38df23c66a"
Description: "Provenance information for a medcom acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(4879c81e-0607-4ccb-b358-24a72208e30d)
* occurredDateTime = 2020-09-30T10:22:12Z
* recorded = 2020-09-30T10:22:12Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)

Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 69dab277-dd4b-4055-9fda-a10a65cb4412
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for a medcom acknowledgement message - CareCommunication. Valid only if used in a bundle (message) "
Description: "Provenance information for a medcom medcom acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(6b027613-c442-406d-bc53-3d913f73e0a8)
* occurredDateTime = 2020-09-28T12:34:57Z
* recorded = 2020-09-28T12:34:57Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(4c284936-5454-4116-95fc-3c8eeeed2400)