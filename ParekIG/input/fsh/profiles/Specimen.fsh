Profile: ParekSpecimen
Parent: Specimen
Id: parek-specimen
Description: "Specimen as used in Parek."
* identifier ^definition = "External identifiers of the specimen. Generally not global, may be internal to a specific report or requester."
* identifier
  * system 1..1
  // * system from IdentifierSource_VS
  * value 1..1
* type 1..1
* type from SpecimenType_VS (preferred)
* subject only Reference(Patient)
* subject 1..1
  * identifier 1..1
    * system from PublicIdType_VS
    * system 1..1
    * value 1..1
* collection 1..1
  * collector only Reference(ParekCollector)
  * collected[x] only dateTime
  * collected[x] 1..1
* container 1..*
* contained 1..1
* contained only ParekCollector
* request 1..1
