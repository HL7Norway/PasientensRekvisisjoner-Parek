Profile: ParekPractitionerRole
Parent: PractitionerRole
Id: parek-practitioner-role
Description: "PractitionerRole as used in Parek. Used to combine actors of type Practitioner and Organization. Practitioner and Organization are referenced by their Identifier.
This is an 'abstract' base profile for ParekRequester and ParekCollector."
* ^abstract = true
* practitioner ^definition = "Reference to Practitioner. May come from a direct mapping from or from a fallback in original message."
* practitioner 0..1
* practitioner
  * display 1..1
  * identifier 1..1
    * system from PersonIdType_VS
    * system 1..1
    * value 1..1
* organization ^definition = "Reference to Organization. May come from a direct mapping or from a fallback in the original message."
* organization 0..1
* organization
  * display 1..1
  * identifier 1..1
    * system from OrganizationIdType_VS
    * system 1..1
    * value 1..1


Profile: ParekRequester
Parent: ParekPractitionerRole
Id: parek-requester-pr 
* practitioner 1..1
* organization 1..1


Profile: ParekCollector
Parent: ParekPractitionerRole
Id: parek-collector-pr 
* practitioner 1..1


Instance: ARequester
InstanceOf: parek-requester-pr
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
InstanceOf: parek-collector-pr
Usage: #example
Title: "Parek Collector"
Description: "Example of collector with only organization"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>A sample ParekCollector, also referenced from other samples.</p>
  </div>"""

* practitioner
  * display = "Somebody"
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.4"
    * value = "987"
