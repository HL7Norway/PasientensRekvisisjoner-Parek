Instance: ARequest
InstanceOf: ParekServiceRequest
Usage: #example
Title: "A Request"
Description: "Example of ParekServiceRequest"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org">
  <p>A sample ParekServiceRequest, also referenced from other samples.</p>
  </div>"""

* identifier
  * system = "http://some.thing.unique"
  * value = "45678"
* subject
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.1"
    * value = "12345678900"
* status = #active
* intent = #plan
* requester = Reference(ARequester)
* contained[+] = ARequester
* orderDetail
  * parameter
    * code.text = "Analyse"
    * valueCodeableConcept.text = "Blodsukker"
* occurrencePeriod.end = "2026-11-03"
* authoredOn = "2026-03-13"
* note.text = "### Mardown header"
* code.concept.text = "Snomed something"