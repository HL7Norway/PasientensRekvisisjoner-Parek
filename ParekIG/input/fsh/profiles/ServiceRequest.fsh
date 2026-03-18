Profile: ParekServiceRequest
Parent: ServiceRequest
Id: parek-service-request
Description: "ServiceRecuest as used in Parek."
* identifier ^definition = "External identifiers of the request. Generally not global, may be internal to a specific requester/system."
* identifier 1..*
* identifier 
  * system 1..1
//   * system from IdentifierSource_VS
  * value 1..1
* subject only Reference(Patient)
* subject
  * identifier 1..1
    * system from PublicIdType_VS
    * system 1..1
    * value 1..1
* requester ^definition = "The person and/or organization responsible for the request. Typically the doctor in charge of the patient (e.g. fastlege)."
* requester 1..1
* requester only Reference(ParekRequester)
* contained 1..1
* contained only ParekRequester
* orderDetail 1..*
  * parameterFocus 1..1
  * parameterFocus.concept 1..1
  * parameter
    * value[x] only CodeableConcept or Quantity or string
* occurrence[x] 1..1
* occurrence[x] only Period
* authoredOn 1..1
* note MS
* code MS


Instance: ARequest
InstanceOf: parek-service-request
Usage: #example
Title: "A Request"
Description: "Example of ParekServiceRequest"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
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
  * parameterFocus
    * concept.text = "Blodprøve"
  * parameter
    * code.text = "Analyse"
    * valueCodeableConcept.text = "Blodsukker"
* occurrencePeriod.end = "2026-11-03"
* authoredOn = "2026-03-13"
* note.text = "### Mardown header"
* code.concept.text = "Snomed something"
