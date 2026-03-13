Instance: ARequest
InstanceOf: ParekServiceRequest
Usage: #example
Title: "A Request"
Description: "Example of ParekServiceRequest"
* identifier
  * system = "some.thing.unique"
  * value = "45678"
* subject
  * identifier
    * system = "FNR"
    * value = "12345"
* status = #active
* intent = #planned
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