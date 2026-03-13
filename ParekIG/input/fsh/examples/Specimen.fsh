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
    * system = "FNR"
    * value = "12345"
* collection
  * collector = Reference(ACollector)
  * collectedDateTime = "2026-03-13"
* container
  * device = Reference(ADevice)
* contained[+] = ACollector
* request = Reference(ARequest)