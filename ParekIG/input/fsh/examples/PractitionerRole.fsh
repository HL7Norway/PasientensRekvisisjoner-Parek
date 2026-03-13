Instance: EmptyRole
InstanceOf: ParekPractitionerRole
Usage: #example
Title: "Parek Practitioner Role"
Description: "Example of base profile, not intended to be used"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>A dummy sample ParekPractitionerRole, only used as a base profile.</p>
  </div>"""

Instance: ARequester
InstanceOf: ParekRequester
Usage: #example
Title: "Parek Requester"
Description: "Example of requester with both practitioner and organization"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>A sample ParekRequester, also referenced from other samples.</p>
  </div>"""
  
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
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>A sample ParekCollector, also referenced from other samples.</p>
  </div>"""

* organization
  * display = "Someplace"
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.101"
    * value = "876543"
