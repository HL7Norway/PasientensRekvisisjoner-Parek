Instance: ASpecimen
InstanceOf: ParekSpecimen
Usage: #example
Title: "A Specimen"
Description: "Example of ParekSpecimen"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org">
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