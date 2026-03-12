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
  * parameter
    * value[x] only CodeableConcept or Quantity
* occurrence[x] 1..1
* occurrence[x] only Period
* authoredOn 1..1
* note MS
* code MS
