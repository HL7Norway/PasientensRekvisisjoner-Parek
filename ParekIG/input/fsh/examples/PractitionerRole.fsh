Instance: EmptyRole
InstanceOf: ParekPractitionerRole
Usage: #example
Title: "Parek Practitioner Role"
Description: "Example of base profile, not intended to be used"


Instance: ARequester
InstanceOf: ParekRequester
Usage: #example
Title: "Parek Requester"
Description: "Example of requester with both practitioner and organization"
* practitioner
  * display = "Somebody"
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.4"
    * value = "987"
* organization
  * display = "Someplace"
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.101"
    * value = "987654"

Instance: ACollector
InstanceOf: ParekCollector
Usage: #example
Title: "Parek Collector"
Description: "Example of collector with only organization"
* organization
  * display = "Someplace"
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.101"
    * value = "876543"
