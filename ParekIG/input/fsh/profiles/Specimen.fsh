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


Instance: ASpecimen
InstanceOf: parek-specimen
Usage: #example
Title: "A Specimen"
Description: "Example of ParekSpecimen"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>A sample ParekSpecimen, references other samples.</p>
  </div>"""
  
* identifier
  * system = "http://some.thing.unique"
  * value = "some.specimen.id"
* type = $Kodeverk_8351#Blod
* subject
  * identifier
    * system = "urn:oid:2.16.578.1.12.4.1.4.1"
    * value = "12345678900"
* collection
  * collector = Reference(ACollector)
  * collectedDateTime = "2026-03-13"
* container
  * device = Reference(ADevice)
* contained[+] = ACollector
* request = Reference(ARequest)
