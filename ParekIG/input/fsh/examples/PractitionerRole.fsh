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
    * system = "1.2.3"
    * value = "987"
* organization
  * display = "Someplace"
  * identifier
    * system = "1.2.3.4.5"
    * value = "987654"

Instance: ACollector
InstanceOf: ParekCollector
Usage: #example
Title: "Parek Collector"
Description: "Example of collector with only organization"
* organization
  * display = "Someplace"
  * identifier
    * system = "1.2.3.4.5"
    * value = "987654"
