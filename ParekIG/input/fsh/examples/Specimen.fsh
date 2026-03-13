Instance: ASpecimen
InstanceOf: ParekSpecimen
Usage: #example
Title: "A Specimen"
Description: "Example of ParekSpecimen"
* identifier
  * system = "some.specimen.system"
  * value = "some.specimen.id"
* type = #Blod
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